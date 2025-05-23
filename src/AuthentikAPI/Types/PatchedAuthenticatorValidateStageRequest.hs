{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PatchedAuthenticatorValidateStageRequest
module AuthentikAPI.Types.PatchedAuthenticatorValidateStageRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.DeviceClassesEnum
import {-# SOURCE #-} AuthentikAPI.Types.FlowSetRequest
import {-# SOURCE #-} AuthentikAPI.Types.NotConfiguredActionEnum
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

-- | Defines the object schema located at @components.schemas.PatchedAuthenticatorValidateStageRequest@ in the specification.
--
-- AuthenticatorValidateStage Serializer
data PatchedAuthenticatorValidateStageRequest = PatchedAuthenticatorValidateStageRequest
  { -- | configuration_stages: Stages used to configure Authenticator when user doesn\'t have any compatible devices. After this configuration Stage passes, the user is not prompted again.
    patchedAuthenticatorValidateStageRequestConfigurationStages :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | device_classes: Device classes which can be used to authenticate
    patchedAuthenticatorValidateStageRequestDeviceClasses :: (GHC.Maybe.Maybe [DeviceClassesEnum]),
    -- | flow_set
    patchedAuthenticatorValidateStageRequestFlowSet :: (GHC.Maybe.Maybe [FlowSetRequest]),
    -- | last_auth_threshold: If any of the user\'s device has been used within this threshold, this stage will be skipped
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedAuthenticatorValidateStageRequestLastAuthThreshold :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | name
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedAuthenticatorValidateStageRequestName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | not_configured_action
    patchedAuthenticatorValidateStageRequestNotConfiguredAction :: (GHC.Maybe.Maybe NotConfiguredActionEnum),
    -- | webauthn_allowed_device_types
    patchedAuthenticatorValidateStageRequestWebauthnAllowedDeviceTypes :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | webauthn_user_verification: Enforce user verification for WebAuthn devices.
    patchedAuthenticatorValidateStageRequestWebauthnUserVerification :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PatchedAuthenticatorValidateStageRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("configuration_stages" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestConfigurationStages obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("device_classes" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestDeviceClasses obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestFlowSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_auth_threshold" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestLastAuthThreshold obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("not_configured_action" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestNotConfiguredAction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("webauthn_allowed_device_types" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestWebauthnAllowedDeviceTypes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("webauthn_user_verification" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestWebauthnUserVerification obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("configuration_stages" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestConfigurationStages obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("device_classes" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestDeviceClasses obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestFlowSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_auth_threshold" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestLastAuthThreshold obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("not_configured_action" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestNotConfiguredAction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("webauthn_allowed_device_types" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestWebauthnAllowedDeviceTypes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("webauthn_user_verification" Data.Aeson.Types.ToJSON..=)) (patchedAuthenticatorValidateStageRequestWebauthnUserVerification obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PatchedAuthenticatorValidateStageRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PatchedAuthenticatorValidateStageRequest" (\obj -> (((((((GHC.Base.pure PatchedAuthenticatorValidateStageRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "configuration_stages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "device_classes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last_auth_threshold")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "not_configured_action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "webauthn_allowed_device_types")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "webauthn_user_verification"))

-- | Create a new 'PatchedAuthenticatorValidateStageRequest' with all required fields.
mkPatchedAuthenticatorValidateStageRequest :: PatchedAuthenticatorValidateStageRequest
mkPatchedAuthenticatorValidateStageRequest =
  PatchedAuthenticatorValidateStageRequest
    { patchedAuthenticatorValidateStageRequestConfigurationStages = GHC.Maybe.Nothing,
      patchedAuthenticatorValidateStageRequestDeviceClasses = GHC.Maybe.Nothing,
      patchedAuthenticatorValidateStageRequestFlowSet = GHC.Maybe.Nothing,
      patchedAuthenticatorValidateStageRequestLastAuthThreshold = GHC.Maybe.Nothing,
      patchedAuthenticatorValidateStageRequestName = GHC.Maybe.Nothing,
      patchedAuthenticatorValidateStageRequestNotConfiguredAction = GHC.Maybe.Nothing,
      patchedAuthenticatorValidateStageRequestWebauthnAllowedDeviceTypes = GHC.Maybe.Nothing,
      patchedAuthenticatorValidateStageRequestWebauthnUserVerification = GHC.Maybe.Nothing
    }
