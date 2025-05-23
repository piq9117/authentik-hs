{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema EventTopPerUser
module AuthentikAPI.Types.EventTopPerUser where

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

-- | Defines the object schema located at @components.schemas.EventTopPerUser@ in the specification.
--
-- Response object of Event\'s top_per_user
data EventTopPerUser = EventTopPerUser
  { -- | application
    eventTopPerUserApplication :: Data.Aeson.Types.Internal.Object,
    -- | counted_events
    eventTopPerUserCountedEvents :: GHC.Types.Int,
    -- | unique_users
    eventTopPerUserUniqueUsers :: GHC.Types.Int
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON EventTopPerUser where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["application" Data.Aeson.Types.ToJSON..= eventTopPerUserApplication obj] : ["counted_events" Data.Aeson.Types.ToJSON..= eventTopPerUserCountedEvents obj] : ["unique_users" Data.Aeson.Types.ToJSON..= eventTopPerUserUniqueUsers obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["application" Data.Aeson.Types.ToJSON..= eventTopPerUserApplication obj] : ["counted_events" Data.Aeson.Types.ToJSON..= eventTopPerUserCountedEvents obj] : ["unique_users" Data.Aeson.Types.ToJSON..= eventTopPerUserUniqueUsers obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON EventTopPerUser where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "EventTopPerUser" (\obj -> ((GHC.Base.pure EventTopPerUser GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "application")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "counted_events")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "unique_users"))

-- | Create a new 'EventTopPerUser' with all required fields.
mkEventTopPerUser ::
  -- | 'eventTopPerUserApplication'
  Data.Aeson.Types.Internal.Object ->
  -- | 'eventTopPerUserCountedEvents'
  GHC.Types.Int ->
  -- | 'eventTopPerUserUniqueUsers'
  GHC.Types.Int ->
  EventTopPerUser
mkEventTopPerUser eventTopPerUserApplication eventTopPerUserCountedEvents eventTopPerUserUniqueUsers =
  EventTopPerUser
    { eventTopPerUserApplication = eventTopPerUserApplication,
      eventTopPerUserCountedEvents = eventTopPerUserCountedEvents,
      eventTopPerUserUniqueUsers = eventTopPerUserUniqueUsers
    }
