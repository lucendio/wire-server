{-# LANGUAGE RecordWildCards #-}

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

module Galley.Cassandra.CustomBackend (interpretCustomBackendStoreToCassandra) where

import Cassandra
import Data.Domain (Domain)
import Galley.Cassandra.Instances ()
import qualified Galley.Cassandra.Queries as Cql
import Galley.Cassandra.Store
import Galley.Effects.CustomBackendStore (CustomBackendStore (..))
import Imports
import Polysemy
import Polysemy.Input
import Wire.API.CustomBackend

interpretCustomBackendStoreToCassandra ::
  Members '[Embed IO, Input ClientState] r =>
  Sem (CustomBackendStore ': r) a ->
  Sem r a
interpretCustomBackendStoreToCassandra = interpret $ \case
  GetCustomBackend dom -> embedClient $ getCustomBackend dom
  SetCustomBackend dom b -> embedClient $ setCustomBackend dom b
  DeleteCustomBackend dom -> embedClient $ deleteCustomBackend dom

getCustomBackend :: MonadClient m => Domain -> m (Maybe CustomBackend)
getCustomBackend domain =
  fmap toCustomBackend <$> do
    retry x1 $ query1 Cql.selectCustomBackend (params LocalQuorum (Identity domain))
  where
    toCustomBackend (backendConfigJsonUrl, backendWebappWelcomeUrl) =
      CustomBackend {..}

setCustomBackend :: MonadClient m => Domain -> CustomBackend -> m ()
setCustomBackend domain CustomBackend {..} = do
  retry x5 $ write Cql.updateCustomBackend (params LocalQuorum (backendConfigJsonUrl, backendWebappWelcomeUrl, domain))

deleteCustomBackend :: MonadClient m => Domain -> m ()
deleteCustomBackend domain = do
  retry x5 $ write Cql.deleteCustomBackend (params LocalQuorum (Identity domain))
