{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE StrictData #-}

-- This file is part of the Wire Server implementation.
--
-- Copyright (C) 2022 Wire Swiss GmbH <opensource@wire.com>
--
-- This program is free software: you can redistribute it and/or modify it under
-- the terms of the GNU Affero General Public License as published by the Free
-- Software Foundation, either version 3 of the License, or (at your option) any
-- later version.
--
-- This program is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
-- FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
-- details.
--
-- You should have received a copy of the GNU Affero General Public License along
-- with this program. If not, see <https://www.gnu.org/licenses/>.

module Wire.API.Conversation.Member
  ( ConvMembers (..),

    -- * Member
    Member (..),
    MutedStatus (..),
    OtherMember (..),

    -- * Member Update
    MemberUpdate (..),
    memberUpdate,
    OtherMemberUpdate (..),

    -- * Swagger
    modelConversationMembers,
    modelOtherMember,
    modelMember,
    modelMemberUpdate,
    modelOtherMemberUpdate,
  )
where

import Control.Applicative
import Control.Lens ((?~))
import Data.Aeson (FromJSON (..), ToJSON (..))
import qualified Data.Aeson as A
import Data.Id
import Data.Qualified
import Data.Schema
import qualified Data.Swagger as S
import qualified Data.Swagger.Build.Api as Doc
import Imports
import qualified Test.QuickCheck as QC
import Wire.API.Conversation.Role
import Wire.API.Provider.Service (ServiceRef, modelServiceRef)
import Wire.Arbitrary (Arbitrary (arbitrary), GenericUniform (..))

data ConvMembers = ConvMembers
  { cmSelf :: Member,
    cmOthers :: [OtherMember]
  }
  deriving stock (Eq, Show, Generic)
  deriving (Arbitrary) via (GenericUniform ConvMembers)
  deriving (FromJSON, ToJSON, S.ToSchema) via Schema ConvMembers

instance ToSchema ConvMembers where
  schema =
    objectWithDocModifier "ConvMembers" (description ?~ "Users of a conversation") $
      ConvMembers
        <$> cmSelf
          .= fieldWithDocModifier
            "self"
            (description ?~ "The user ID of the requestor")
            schema
        <*> cmOthers
          .= fieldWithDocModifier
            "others"
            (description ?~ "All other current users of this conversation")
            (array schema)

modelConversationMembers :: Doc.Model
modelConversationMembers = Doc.defineModel "ConversationMembers" $ do
  Doc.description "Object representing users of a conversation."
  Doc.property "self" (Doc.ref modelMember) $
    Doc.description "The user ID of the requestor"
  Doc.property "others" (Doc.unique (Doc.array (Doc.ref modelOtherMember))) $
    Doc.description "All other current users of this conversation"

--------------------------------------------------------------------------------
-- Members

data Member = Member
  { memId :: Qualified UserId,
    memService :: Maybe ServiceRef,
    memOtrMutedStatus :: Maybe MutedStatus,
    memOtrMutedRef :: Maybe Text,
    memOtrArchived :: Bool,
    memOtrArchivedRef :: Maybe Text,
    memHidden :: Bool,
    memHiddenRef :: Maybe Text,
    memConvRoleName :: RoleName
  }
  deriving stock (Eq, Show, Generic)
  deriving (Arbitrary) via (GenericUniform Member)
  deriving (FromJSON, ToJSON, S.ToSchema) via Schema Member

instance ToSchema Member where
  schema =
    object "Member" $
      Member
        <$> memId .= field "qualified_id" schema
        <* (qUnqualified . memId)
          .= optional (field "id" (deprecatedSchema "qualified_id" schema))
        <*> memService .= optField "service" (maybeWithDefault A.Null schema)
        --  Remove ...
        <* const () .= optional (field "status" (c (0 :: Int)))
        <* const () .= optional (field "status_ref" (c ("0.0" :: Text)))
        <* const ()
          .= optional
            ( field
                "status_time"
                (c ("1970-01-01T00:00:00.000Z" :: Text))
            )
        -- ... until here
        <*> memOtrMutedStatus .= optField "otr_muted_status" (maybeWithDefault A.Null schema)
        <*> memOtrMutedRef .= optField "otr_muted_ref" (maybeWithDefault A.Null schema)
        <*> memOtrArchived .= (fromMaybe False <$> optField "otr_archived" schema)
        <*> memOtrArchivedRef .= optField "otr_archived_ref" (maybeWithDefault A.Null schema)
        <*> memHidden .= (field "hidden" schema <|> pure False)
        <*> memHiddenRef .= optField "hidden_ref" (maybeWithDefault A.Null schema)
        <*> memConvRoleName .= (fromMaybe roleNameWireAdmin <$> optField "conversation_role" schema)
    where
      c :: ToJSON a => a -> ValueSchema SwaggerDoc ()
      c val = mkSchema mempty (const (pure ())) (const (pure (toJSON val)))

modelMember :: Doc.Model
modelMember = Doc.defineModel "Member" $ do
  Doc.property "id" Doc.bytes' $
    Doc.description "User ID"
  Doc.property "otr_muted_ref" Doc.bytes' $ do
    Doc.description "A reference point for (un)muting"
    Doc.optional
  Doc.property "otr_archived" Doc.bool' $ do
    Doc.description "Whether the conversation is archived"
    Doc.optional
  Doc.property "otr_archived_ref" Doc.bytes' $ do
    Doc.description "A reference point for (un)archiving"
    Doc.optional
  Doc.property "hidden" Doc.bool' $ do
    Doc.description "Whether the conversation is hidden"
    Doc.optional
  Doc.property "hidden_ref" Doc.bytes' $ do
    Doc.description "A reference point for (un)hiding"
    Doc.optional
  Doc.property "service" (Doc.ref modelServiceRef) $ do
    Doc.description "The reference to the owning service, if the member is a 'bot'."
    Doc.optional

-- | The semantics of the possible different values is entirely up to clients,
-- the server will not interpret this value in any way.
newtype MutedStatus = MutedStatus {fromMutedStatus :: Int32}
  deriving stock (Eq, Ord, Show, Generic)
  deriving newtype (Num, ToSchema, Arbitrary)
  deriving (FromJSON, ToJSON, S.ToSchema) via Schema MutedStatus

data OtherMember = OtherMember
  { omQualifiedId :: Qualified UserId,
    omService :: Maybe ServiceRef,
    omConvRoleName :: RoleName
  }
  deriving stock (Eq, Show, Generic)
  deriving (Arbitrary) via (GenericUniform OtherMember)
  deriving (FromJSON, ToJSON, S.ToSchema) via Schema OtherMember

instance ToSchema OtherMember where
  schema =
    object "OtherMember" $
      OtherMember
        <$> omQualifiedId .= field "qualified_id" schema
        <* (qUnqualified . omQualifiedId) .= optional (field "id" schema)
        <*> omService .= maybe_ (optFieldWithDocModifier "service" (description ?~ desc) schema)
        <*> omConvRoleName .= (field "conversation_role" schema <|> pure roleNameWireAdmin)
        <* const (0 :: Int) .= optional (fieldWithDocModifier "status" (description ?~ "deprecated") schema) -- TODO: remove
    where
      desc = "The reference to the owning service, if the member is a 'bot'."

instance Ord OtherMember where
  compare a b = compare (omQualifiedId a) (omQualifiedId b)

modelOtherMember :: Doc.Model
modelOtherMember = Doc.defineModel "OtherMember" $ do
  Doc.property "id" Doc.bytes' $
    Doc.description "User ID"
  Doc.property "service" (Doc.ref modelServiceRef) $ do
    Doc.description "The reference to the owning service, if the member is a 'bot'."
    Doc.optional

--------------------------------------------------------------------------------
-- Member Updates

-- | Inbound self member updates.  This is what galley expects on its endpoint.  See also
-- 'MemberUpdateData' - that event is meant to be sent only to the _self_ user.
data MemberUpdate = MemberUpdate
  { mupOtrMuteStatus :: Maybe MutedStatus,
    mupOtrMuteRef :: Maybe Text,
    mupOtrArchive :: Maybe Bool,
    mupOtrArchiveRef :: Maybe Text,
    mupHidden :: Maybe Bool,
    mupHiddenRef :: Maybe Text
  }
  deriving stock (Eq, Show, Generic)
  deriving (FromJSON, ToJSON, S.ToSchema) via Schema MemberUpdate

memberUpdate :: MemberUpdate
memberUpdate = MemberUpdate Nothing Nothing Nothing Nothing Nothing Nothing

modelMemberUpdate :: Doc.Model
modelMemberUpdate = Doc.defineModel "MemberUpdate" $ do
  Doc.description "Update user properties relative to a conversation"
  Doc.property "otr_muted_ref" Doc.bytes' $ do
    Doc.description "A reference point for (un)muting"
    Doc.optional
  Doc.property "otr_archived" Doc.bool' $ do
    Doc.description "Whether to notify on conversation updates"
    Doc.optional
  Doc.property "otr_archived_ref" Doc.bytes' $ do
    Doc.description "A reference point for (un)archiving"
    Doc.optional
  Doc.property "hidden" Doc.bool' $ do
    Doc.description "Whether the conversation is hidden"
    Doc.optional
  Doc.property "hidden_ref" Doc.bytes' $ do
    Doc.description "A reference point for (un)hiding"
    Doc.optional

instance ToSchema MemberUpdate where
  schema =
    (`withParser` (either fail pure . validateMemberUpdate))
      . object "MemberUpdate"
      $ MemberUpdate
        <$> mupOtrMuteStatus .= maybe_ (optField "otr_muted_status" schema)
        <*> mupOtrMuteRef .= maybe_ (optField "otr_muted_ref" schema)
        <*> mupOtrArchive .= maybe_ (optField "otr_archived" schema)
        <*> mupOtrArchiveRef .= maybe_ (optField "otr_archived_ref" schema)
        <*> mupHidden .= maybe_ (optField "hidden" schema)
        <*> mupHiddenRef .= maybe_ (optField "hidden_ref" schema)

instance Arbitrary MemberUpdate where
  arbitrary =
    (getGenericUniform <$> arbitrary)
      `QC.suchThat` (isRight . validateMemberUpdate)

validateMemberUpdate :: MemberUpdate -> Either String MemberUpdate
validateMemberUpdate u =
  if isJust (mupOtrMuteStatus u)
    || isJust (mupOtrMuteRef u)
    || isJust (mupOtrArchive u)
    || isJust (mupOtrArchiveRef u)
    || isJust (mupHidden u)
    || isJust (mupHiddenRef u)
    then Right u
    else
      Left
        "One of { 'otr_muted_ref', 'otr_archived', 'otr_archived_ref', \
        \'hidden', 'hidden_ref', 'conversation_role'} required."

-- | Inbound other member updates.  This is what galley expects on its endpoint.  See also
-- 'MemberUpdateData' - that event is meant to be sent to all users in a conversation.
data OtherMemberUpdate = OtherMemberUpdate
  { omuConvRoleName :: Maybe RoleName
  }
  deriving stock (Eq, Show, Generic)
  deriving (FromJSON, ToJSON, S.ToSchema) via (Schema OtherMemberUpdate)

modelOtherMemberUpdate :: Doc.Model
modelOtherMemberUpdate = Doc.defineModel "otherMemberUpdate" $ do
  Doc.description "Update user properties of other members relative to a conversation"
  Doc.property "conversation_role" Doc.string' $ do
    Doc.description "Name of the conversation role updated to"
    Doc.optional

instance Arbitrary OtherMemberUpdate where
  arbitrary = OtherMemberUpdate . Just <$> arbitrary

instance ToSchema OtherMemberUpdate where
  schema =
    (`withParser` (either fail pure . validateOtherMemberUpdate))
      . objectWithDocModifier
        "OtherMemberUpdate"
        (description ?~ "Update user properties of other members relative to a conversation")
      $ OtherMemberUpdate
        <$> omuConvRoleName .= maybe_ (optField "conversation_role" schema)

validateOtherMemberUpdate :: OtherMemberUpdate -> Either String OtherMemberUpdate
validateOtherMemberUpdate u
  | isJust (omuConvRoleName u) = pure u
  | otherwise = Left "'conversation_role' is required"
