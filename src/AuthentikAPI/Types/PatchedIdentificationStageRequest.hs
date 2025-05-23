{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PatchedIdentificationStageRequest
module AuthentikAPI.Types.PatchedIdentificationStageRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.FlowSetRequest
import {-# SOURCE #-} AuthentikAPI.Types.UserFieldsEnum
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

-- | Defines the object schema located at @components.schemas.PatchedIdentificationStageRequest@ in the specification.
--
-- IdentificationStage Serializer
data PatchedIdentificationStageRequest = PatchedIdentificationStageRequest
  { -- | captcha_stage: When set, adds functionality exactly like a Captcha stage, but baked into the Identification stage.
    patchedIdentificationStageRequestCaptchaStage :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | case_insensitive_matching: When enabled, user fields are matched regardless of their casing.
    patchedIdentificationStageRequestCaseInsensitiveMatching :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | enable_remember_me: Show the user the \'Remember me on this device\' toggle, allowing repeat users to skip straight to entering their password.
    patchedIdentificationStageRequestEnableRememberMe :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | enrollment_flow: Optional enrollment flow, which is linked at the bottom of the page.
    patchedIdentificationStageRequestEnrollmentFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | flow_set
    patchedIdentificationStageRequestFlowSet :: (GHC.Maybe.Maybe [FlowSetRequest]),
    -- | name
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedIdentificationStageRequestName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | password_stage: When set, shows a password field, instead of showing the password field as separate step.
    patchedIdentificationStageRequestPasswordStage :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | passwordless_flow: Optional passwordless flow, which is linked at the bottom of the page.
    patchedIdentificationStageRequestPasswordlessFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | pretend_user_exists: When enabled, the stage will succeed and continue even when incorrect user info is entered.
    patchedIdentificationStageRequestPretendUserExists :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | recovery_flow: Optional recovery flow, which is linked at the bottom of the page.
    patchedIdentificationStageRequestRecoveryFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | show_matched_user: When a valid username\/email has been entered, and this option is enabled, the user\'s username and avatar will be shown. Otherwise, the text that the user entered will be shown
    patchedIdentificationStageRequestShowMatchedUser :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | show_source_labels
    patchedIdentificationStageRequestShowSourceLabels :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | sources: Specify which sources should be shown.
    patchedIdentificationStageRequestSources :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | user_fields: Fields of the user object to match against. (Hold shift to select multiple options)
    patchedIdentificationStageRequestUserFields :: (GHC.Maybe.Maybe [UserFieldsEnum])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PatchedIdentificationStageRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("captcha_stage" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestCaptchaStage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("case_insensitive_matching" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestCaseInsensitiveMatching obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enable_remember_me" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestEnableRememberMe obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enrollment_flow" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestEnrollmentFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestFlowSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("password_stage" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestPasswordStage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("passwordless_flow" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestPasswordlessFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pretend_user_exists" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestPretendUserExists obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("recovery_flow" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestRecoveryFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("show_matched_user" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestShowMatchedUser obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("show_source_labels" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestShowSourceLabels obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sources" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestSources obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_fields" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestUserFields obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("captcha_stage" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestCaptchaStage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("case_insensitive_matching" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestCaseInsensitiveMatching obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enable_remember_me" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestEnableRememberMe obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enrollment_flow" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestEnrollmentFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestFlowSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("password_stage" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestPasswordStage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("passwordless_flow" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestPasswordlessFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pretend_user_exists" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestPretendUserExists obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("recovery_flow" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestRecoveryFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("show_matched_user" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestShowMatchedUser obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("show_source_labels" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestShowSourceLabels obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sources" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestSources obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_fields" Data.Aeson.Types.ToJSON..=)) (patchedIdentificationStageRequestUserFields obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PatchedIdentificationStageRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PatchedIdentificationStageRequest" (\obj -> (((((((((((((GHC.Base.pure PatchedIdentificationStageRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "captcha_stage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "case_insensitive_matching")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enable_remember_me")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enrollment_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "password_stage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "passwordless_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pretend_user_exists")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "recovery_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "show_matched_user")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "show_source_labels")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_fields"))

-- | Create a new 'PatchedIdentificationStageRequest' with all required fields.
mkPatchedIdentificationStageRequest :: PatchedIdentificationStageRequest
mkPatchedIdentificationStageRequest =
  PatchedIdentificationStageRequest
    { patchedIdentificationStageRequestCaptchaStage = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestCaseInsensitiveMatching = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestEnableRememberMe = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestEnrollmentFlow = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestFlowSet = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestName = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestPasswordStage = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestPasswordlessFlow = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestPretendUserExists = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestRecoveryFlow = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestShowMatchedUser = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestShowSourceLabels = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestSources = GHC.Maybe.Nothing,
      patchedIdentificationStageRequestUserFields = GHC.Maybe.Nothing
    }
