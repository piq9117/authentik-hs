{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema LicenseForecast
module AuthentikAPI.Types.LicenseForecast where

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

-- | Defines the object schema located at @components.schemas.LicenseForecast@ in the specification.
--
-- Serializer for license forecast
data LicenseForecast = LicenseForecast
  { -- | external_users
    licenseForecastExternalUsers :: GHC.Types.Int,
    -- | forecasted_external_users
    licenseForecastForecastedExternalUsers :: GHC.Types.Int,
    -- | forecasted_internal_users
    licenseForecastForecastedInternalUsers :: GHC.Types.Int,
    -- | internal_users
    licenseForecastInternalUsers :: GHC.Types.Int
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON LicenseForecast where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["external_users" Data.Aeson.Types.ToJSON..= licenseForecastExternalUsers obj] : ["forecasted_external_users" Data.Aeson.Types.ToJSON..= licenseForecastForecastedExternalUsers obj] : ["forecasted_internal_users" Data.Aeson.Types.ToJSON..= licenseForecastForecastedInternalUsers obj] : ["internal_users" Data.Aeson.Types.ToJSON..= licenseForecastInternalUsers obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["external_users" Data.Aeson.Types.ToJSON..= licenseForecastExternalUsers obj] : ["forecasted_external_users" Data.Aeson.Types.ToJSON..= licenseForecastForecastedExternalUsers obj] : ["forecasted_internal_users" Data.Aeson.Types.ToJSON..= licenseForecastForecastedInternalUsers obj] : ["internal_users" Data.Aeson.Types.ToJSON..= licenseForecastInternalUsers obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON LicenseForecast where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "LicenseForecast" (\obj -> (((GHC.Base.pure LicenseForecast GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "external_users")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "forecasted_external_users")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "forecasted_internal_users")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "internal_users"))

-- | Create a new 'LicenseForecast' with all required fields.
mkLicenseForecast ::
  -- | 'licenseForecastExternalUsers'
  GHC.Types.Int ->
  -- | 'licenseForecastForecastedExternalUsers'
  GHC.Types.Int ->
  -- | 'licenseForecastForecastedInternalUsers'
  GHC.Types.Int ->
  -- | 'licenseForecastInternalUsers'
  GHC.Types.Int ->
  LicenseForecast
mkLicenseForecast licenseForecastExternalUsers licenseForecastForecastedExternalUsers licenseForecastForecastedInternalUsers licenseForecastInternalUsers =
  LicenseForecast
    { licenseForecastExternalUsers = licenseForecastExternalUsers,
      licenseForecastForecastedExternalUsers = licenseForecastForecastedExternalUsers,
      licenseForecastForecastedInternalUsers = licenseForecastForecastedInternalUsers,
      licenseForecastInternalUsers = licenseForecastInternalUsers
    }
