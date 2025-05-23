{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ErrorReportingConfig
module AuthentikAPI.Types.ErrorReportingConfig where

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

-- | Defines the object schema located at @components.schemas.ErrorReportingConfig@ in the specification.
--
-- Config for error reporting
data ErrorReportingConfig = ErrorReportingConfig
  { -- | enabled
    errorReportingConfigEnabled :: GHC.Types.Bool,
    -- | environment
    errorReportingConfigEnvironment :: Data.Text.Internal.Text,
    -- | send_pii
    errorReportingConfigSendPii :: GHC.Types.Bool,
    -- | sentry_dsn
    errorReportingConfigSentryDsn :: Data.Text.Internal.Text,
    -- | traces_sample_rate
    errorReportingConfigTracesSampleRate :: GHC.Types.Double
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ErrorReportingConfig where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= errorReportingConfigEnabled obj] : ["environment" Data.Aeson.Types.ToJSON..= errorReportingConfigEnvironment obj] : ["send_pii" Data.Aeson.Types.ToJSON..= errorReportingConfigSendPii obj] : ["sentry_dsn" Data.Aeson.Types.ToJSON..= errorReportingConfigSentryDsn obj] : ["traces_sample_rate" Data.Aeson.Types.ToJSON..= errorReportingConfigTracesSampleRate obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= errorReportingConfigEnabled obj] : ["environment" Data.Aeson.Types.ToJSON..= errorReportingConfigEnvironment obj] : ["send_pii" Data.Aeson.Types.ToJSON..= errorReportingConfigSendPii obj] : ["sentry_dsn" Data.Aeson.Types.ToJSON..= errorReportingConfigSentryDsn obj] : ["traces_sample_rate" Data.Aeson.Types.ToJSON..= errorReportingConfigTracesSampleRate obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON ErrorReportingConfig where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ErrorReportingConfig" (\obj -> ((((GHC.Base.pure ErrorReportingConfig GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "environment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "send_pii")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "sentry_dsn")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "traces_sample_rate"))

-- | Create a new 'ErrorReportingConfig' with all required fields.
mkErrorReportingConfig ::
  -- | 'errorReportingConfigEnabled'
  GHC.Types.Bool ->
  -- | 'errorReportingConfigEnvironment'
  Data.Text.Internal.Text ->
  -- | 'errorReportingConfigSendPii'
  GHC.Types.Bool ->
  -- | 'errorReportingConfigSentryDsn'
  Data.Text.Internal.Text ->
  -- | 'errorReportingConfigTracesSampleRate'
  GHC.Types.Double ->
  ErrorReportingConfig
mkErrorReportingConfig errorReportingConfigEnabled errorReportingConfigEnvironment errorReportingConfigSendPii errorReportingConfigSentryDsn errorReportingConfigTracesSampleRate =
  ErrorReportingConfig
    { errorReportingConfigEnabled = errorReportingConfigEnabled,
      errorReportingConfigEnvironment = errorReportingConfigEnvironment,
      errorReportingConfigSendPii = errorReportingConfigSendPii,
      errorReportingConfigSentryDsn = errorReportingConfigSentryDsn,
      errorReportingConfigTracesSampleRate = errorReportingConfigTracesSampleRate
    }
