{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Device
module AuthentikAPI.Types.Device where

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

-- | Defines the object schema located at @components.schemas.Device@ in the specification.
--
-- Serializer for Duo authenticator devices
data Device = Device
  { -- | confirmed
    deviceConfirmed :: GHC.Types.Bool,
    -- | created
    deviceCreated :: Data.Text.Internal.Text,
    -- | extra_description: Get extra description
    deviceExtraDescription :: Data.Text.Internal.Text,
    -- | last_updated
    deviceLastUpdated :: Data.Text.Internal.Text,
    -- | last_used
    deviceLastUsed :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | meta_model_name: Return internal model name
    deviceMetaModelName :: Data.Text.Internal.Text,
    -- | name
    deviceName :: Data.Text.Internal.Text,
    -- | pk
    devicePk :: Data.Text.Internal.Text,
    -- | type: Get type of device
    deviceType :: Data.Text.Internal.Text,
    -- | verbose_name: Return object\'s verbose_name
    deviceVerboseName :: Data.Text.Internal.Text,
    -- | verbose_name_plural: Return object\'s plural verbose_name
    deviceVerboseNamePlural :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Device where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["confirmed" Data.Aeson.Types.ToJSON..= deviceConfirmed obj] : ["created" Data.Aeson.Types.ToJSON..= deviceCreated obj] : ["extra_description" Data.Aeson.Types.ToJSON..= deviceExtraDescription obj] : ["last_updated" Data.Aeson.Types.ToJSON..= deviceLastUpdated obj] : ["last_used" Data.Aeson.Types.ToJSON..= deviceLastUsed obj] : ["meta_model_name" Data.Aeson.Types.ToJSON..= deviceMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= deviceName obj] : ["pk" Data.Aeson.Types.ToJSON..= devicePk obj] : ["type" Data.Aeson.Types.ToJSON..= deviceType obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= deviceVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= deviceVerboseNamePlural obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["confirmed" Data.Aeson.Types.ToJSON..= deviceConfirmed obj] : ["created" Data.Aeson.Types.ToJSON..= deviceCreated obj] : ["extra_description" Data.Aeson.Types.ToJSON..= deviceExtraDescription obj] : ["last_updated" Data.Aeson.Types.ToJSON..= deviceLastUpdated obj] : ["last_used" Data.Aeson.Types.ToJSON..= deviceLastUsed obj] : ["meta_model_name" Data.Aeson.Types.ToJSON..= deviceMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= deviceName obj] : ["pk" Data.Aeson.Types.ToJSON..= devicePk obj] : ["type" Data.Aeson.Types.ToJSON..= deviceType obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= deviceVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= deviceVerboseNamePlural obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Device where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Device" (\obj -> ((((((((((GHC.Base.pure Device GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "confirmed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "extra_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_updated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_used")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "meta_model_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name_plural"))

-- | Create a new 'Device' with all required fields.
mkDevice ::
  -- | 'deviceConfirmed'
  GHC.Types.Bool ->
  -- | 'deviceCreated'
  Data.Text.Internal.Text ->
  -- | 'deviceExtraDescription'
  Data.Text.Internal.Text ->
  -- | 'deviceLastUpdated'
  Data.Text.Internal.Text ->
  -- | 'deviceLastUsed'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'deviceMetaModelName'
  Data.Text.Internal.Text ->
  -- | 'deviceName'
  Data.Text.Internal.Text ->
  -- | 'devicePk'
  Data.Text.Internal.Text ->
  -- | 'deviceType'
  Data.Text.Internal.Text ->
  -- | 'deviceVerboseName'
  Data.Text.Internal.Text ->
  -- | 'deviceVerboseNamePlural'
  Data.Text.Internal.Text ->
  Device
mkDevice deviceConfirmed deviceCreated deviceExtraDescription deviceLastUpdated deviceLastUsed deviceMetaModelName deviceName devicePk deviceType deviceVerboseName deviceVerboseNamePlural =
  Device
    { deviceConfirmed = deviceConfirmed,
      deviceCreated = deviceCreated,
      deviceExtraDescription = deviceExtraDescription,
      deviceLastUpdated = deviceLastUpdated,
      deviceLastUsed = deviceLastUsed,
      deviceMetaModelName = deviceMetaModelName,
      deviceName = deviceName,
      devicePk = devicePk,
      deviceType = deviceType,
      deviceVerboseName = deviceVerboseName,
      deviceVerboseNamePlural = deviceVerboseNamePlural
    }
