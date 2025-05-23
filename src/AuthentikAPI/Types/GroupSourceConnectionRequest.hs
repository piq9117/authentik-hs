{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema GroupSourceConnectionRequest
module AuthentikAPI.Types.GroupSourceConnectionRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.GroupSourceConnectionRequest@ in the specification.
--
-- Group Source Connection
data GroupSourceConnectionRequest = GroupSourceConnectionRequest
  { -- | group
    groupSourceConnectionRequestGroup :: Data.Text.Internal.Text,
    -- | identifier
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    groupSourceConnectionRequestIdentifier :: Data.Text.Internal.Text,
    -- | source
    groupSourceConnectionRequestSource :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GroupSourceConnectionRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["group" Data.Aeson.Types.ToJSON..= groupSourceConnectionRequestGroup obj] : ["identifier" Data.Aeson.Types.ToJSON..= groupSourceConnectionRequestIdentifier obj] : ["source" Data.Aeson.Types.ToJSON..= groupSourceConnectionRequestSource obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["group" Data.Aeson.Types.ToJSON..= groupSourceConnectionRequestGroup obj] : ["identifier" Data.Aeson.Types.ToJSON..= groupSourceConnectionRequestIdentifier obj] : ["source" Data.Aeson.Types.ToJSON..= groupSourceConnectionRequestSource obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GroupSourceConnectionRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GroupSourceConnectionRequest" (\obj -> ((GHC.Base.pure GroupSourceConnectionRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "identifier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source"))

-- | Create a new 'GroupSourceConnectionRequest' with all required fields.
mkGroupSourceConnectionRequest ::
  -- | 'groupSourceConnectionRequestGroup'
  Data.Text.Internal.Text ->
  -- | 'groupSourceConnectionRequestIdentifier'
  Data.Text.Internal.Text ->
  -- | 'groupSourceConnectionRequestSource'
  Data.Text.Internal.Text ->
  GroupSourceConnectionRequest
mkGroupSourceConnectionRequest groupSourceConnectionRequestGroup groupSourceConnectionRequestIdentifier groupSourceConnectionRequestSource =
  GroupSourceConnectionRequest
    { groupSourceConnectionRequestGroup = groupSourceConnectionRequestGroup,
      groupSourceConnectionRequestIdentifier = groupSourceConnectionRequestIdentifier,
      groupSourceConnectionRequestSource = groupSourceConnectionRequestSource
    }
