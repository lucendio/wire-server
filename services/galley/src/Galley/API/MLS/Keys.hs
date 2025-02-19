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

module Galley.API.MLS.Keys where

import Control.Lens (view)
import Crypto.PubKey.Ed25519 (PublicKey, SecretKey)
import Data.Id
import Data.Qualified
import Galley.Env
import Imports
import Polysemy
import Polysemy.Input
import Wire.API.MLS.Credential (SignaturePurpose (RemovalPurpose))
import Wire.API.MLS.Keys

getMLSPublicKeys ::
  Member (Input Env) r =>
  Local UserId ->
  Sem r MLSPublicKeys
getMLSPublicKeys _ = do
  keys <- inputs (view mlsKeys)
  pure $ mlsKeysToPublic keys

getMLSRemovalKey :: Member (Input Env) r => Sem r (Maybe (SecretKey, PublicKey))
getMLSRemovalKey = mlsKeyPair_ed25519 <$> (inputs (view mlsKeys) <*> pure RemovalPurpose)
