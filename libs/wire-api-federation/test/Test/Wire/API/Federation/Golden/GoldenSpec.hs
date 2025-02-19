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

module Test.Wire.API.Federation.Golden.GoldenSpec where

import Imports
import Test.Hspec
import qualified Test.Wire.API.Federation.Golden.ConversationCreated as ConversationCreated
import qualified Test.Wire.API.Federation.Golden.ConversationUpdate as ConversationUpdate
import qualified Test.Wire.API.Federation.Golden.LeaveConversationRequest as LeaveConversationRequest
import qualified Test.Wire.API.Federation.Golden.LeaveConversationResponse as LeaveConversationResponse
import qualified Test.Wire.API.Federation.Golden.MessageSendResponse as MessageSendResponse
import qualified Test.Wire.API.Federation.Golden.NewConnectionRequest as NewConnectionRequest
import qualified Test.Wire.API.Federation.Golden.NewConnectionResponse as NewConnectionResponse
import Test.Wire.API.Federation.Golden.Runner (testObjects)

spec :: Spec
spec =
  describe "Golden tests" $ do
    testObjects
      [ (MessageSendResponse.testObject_MessageSendReponse1, "testObject_MessageSendReponse1.json"),
        (MessageSendResponse.testObject_MessageSendReponse2, "testObject_MessageSendReponse2.json"),
        (MessageSendResponse.testObject_MessageSendReponse3, "testObject_MessageSendReponse3.json"),
        (MessageSendResponse.testObject_MessageSendReponse4, "testObject_MessageSendReponse4.json"),
        (MessageSendResponse.testObject_MessageSendReponse5, "testObject_MessageSendReponse5.json")
      ]
    testObjects [(LeaveConversationRequest.testObject_LeaveConversationRequest1, "testObject_LeaveConversationRequest1.json")]
    testObjects
      [ (ConversationUpdate.testObject_ConversationUpdate1, "testObject_ConversationUpdate1.json"),
        (ConversationUpdate.testObject_ConversationUpdate2, "testObject_ConversationUpdate2.json")
      ]
    testObjects
      [ (LeaveConversationResponse.testObject_LeaveConversationResponse1, "testObject_LeaveConversationResponse1.json"),
        (LeaveConversationResponse.testObject_LeaveConversationResponse2, "testObject_LeaveConversationResponse2.json"),
        (LeaveConversationResponse.testObject_LeaveConversationResponse3, "testObject_LeaveConversationResponse3.json"),
        (LeaveConversationResponse.testObject_LeaveConversationResponse8, "testObject_LeaveConversationResponse8.json")
      ]
    testObjects
      [ (NewConnectionRequest.testObject_NewConnectionRequest1, "testObject_NewConnectionRequest1.json"),
        (NewConnectionRequest.testObject_NewConnectionRequest2, "testObject_NewConnectionRequest2.json")
      ]
    testObjects
      [ (NewConnectionResponse.testObject_NewConnectionResponse1, "testObject_NewConnectionResponse1.json"),
        (NewConnectionResponse.testObject_NewConnectionResponse2, "testObject_NewConnectionResponse2.json"),
        (NewConnectionResponse.testObject_NewConnectionResponse3, "testObject_NewConnectionResponse3.json"),
        (NewConnectionResponse.testObject_NewConnectionResponse4, "testObject_NewConnectionResponse4.json")
      ]
    testObjects
      [ (ConversationCreated.testObject_ConversationCreated1, "testObject_ConversationCreated1.json"),
        (ConversationCreated.testObject_ConversationCreated2, "testObject_ConversationCreated2.json")
      ]
