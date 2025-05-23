{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Settings
module AuthentikAPI.Types.Settings where

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

-- | Defines the object schema located at @components.schemas.Settings@ in the specification.
--
-- Settings Serializer
data Settings = Settings
  { -- | avatars: Configure how authentik should show avatars for users.
    settingsAvatars :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | default_token_duration: Default token duration
    settingsDefaultTokenDuration :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | default_token_length: Default token length
    --
    -- Constraints:
    --
    -- * Maxium  of 2.1474836e9
    -- * Minimum  of 1.0
    settingsDefaultTokenLength :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | default_user_change_email: Enable the ability for users to change their email address.
    settingsDefaultUserChangeEmail :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | default_user_change_name: Enable the ability for users to change their name.
    settingsDefaultUserChangeName :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | default_user_change_username: Enable the ability for users to change their username.
    settingsDefaultUserChangeUsername :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | event_retention: Events will be deleted after this duration.(Format: weeks=3;days=2;hours=3,seconds=2).
    settingsEventRetention :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | footer_links: The option configures the footer links on the flow executor pages.
    settingsFooterLinks :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | gdpr_compliance: When enabled, all the events caused by a user will be deleted upon the user\'s deletion.
    settingsGdprCompliance :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | impersonation: Globally enable\/disable impersonation.
    settingsImpersonation :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | impersonation_require_reason: Require administrators to provide a reason for impersonating a user.
    settingsImpersonationRequireReason :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | reputation_lower_limit: Reputation cannot decrease lower than this value. Zero or negative.
    --
    -- Constraints:
    --
    -- * Maxium  of 0.0
    -- * Minimum  of -2.1474836e9
    settingsReputationLowerLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | reputation_upper_limit: Reputation cannot increase higher than this value. Zero or positive.
    --
    -- Constraints:
    --
    -- * Maxium  of 2.1474836e9
    -- * Minimum  of 0.0
    settingsReputationUpperLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Settings where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avatars" Data.Aeson.Types.ToJSON..=)) (settingsAvatars obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_token_duration" Data.Aeson.Types.ToJSON..=)) (settingsDefaultTokenDuration obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_token_length" Data.Aeson.Types.ToJSON..=)) (settingsDefaultTokenLength obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_user_change_email" Data.Aeson.Types.ToJSON..=)) (settingsDefaultUserChangeEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_user_change_name" Data.Aeson.Types.ToJSON..=)) (settingsDefaultUserChangeName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_user_change_username" Data.Aeson.Types.ToJSON..=)) (settingsDefaultUserChangeUsername obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("event_retention" Data.Aeson.Types.ToJSON..=)) (settingsEventRetention obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("footer_links" Data.Aeson.Types.ToJSON..=)) (settingsFooterLinks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gdpr_compliance" Data.Aeson.Types.ToJSON..=)) (settingsGdprCompliance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("impersonation" Data.Aeson.Types.ToJSON..=)) (settingsImpersonation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("impersonation_require_reason" Data.Aeson.Types.ToJSON..=)) (settingsImpersonationRequireReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reputation_lower_limit" Data.Aeson.Types.ToJSON..=)) (settingsReputationLowerLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reputation_upper_limit" Data.Aeson.Types.ToJSON..=)) (settingsReputationUpperLimit obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("avatars" Data.Aeson.Types.ToJSON..=)) (settingsAvatars obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_token_duration" Data.Aeson.Types.ToJSON..=)) (settingsDefaultTokenDuration obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_token_length" Data.Aeson.Types.ToJSON..=)) (settingsDefaultTokenLength obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_user_change_email" Data.Aeson.Types.ToJSON..=)) (settingsDefaultUserChangeEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_user_change_name" Data.Aeson.Types.ToJSON..=)) (settingsDefaultUserChangeName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_user_change_username" Data.Aeson.Types.ToJSON..=)) (settingsDefaultUserChangeUsername obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("event_retention" Data.Aeson.Types.ToJSON..=)) (settingsEventRetention obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("footer_links" Data.Aeson.Types.ToJSON..=)) (settingsFooterLinks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gdpr_compliance" Data.Aeson.Types.ToJSON..=)) (settingsGdprCompliance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("impersonation" Data.Aeson.Types.ToJSON..=)) (settingsImpersonation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("impersonation_require_reason" Data.Aeson.Types.ToJSON..=)) (settingsImpersonationRequireReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reputation_lower_limit" Data.Aeson.Types.ToJSON..=)) (settingsReputationLowerLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reputation_upper_limit" Data.Aeson.Types.ToJSON..=)) (settingsReputationUpperLimit obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Settings where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Settings" (\obj -> ((((((((((((GHC.Base.pure Settings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "avatars")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_token_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_token_length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_user_change_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_user_change_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_user_change_username")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "event_retention")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "footer_links")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gdpr_compliance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "impersonation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "impersonation_require_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reputation_lower_limit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reputation_upper_limit"))

-- | Create a new 'Settings' with all required fields.
mkSettings :: Settings
mkSettings =
  Settings
    { settingsAvatars = GHC.Maybe.Nothing,
      settingsDefaultTokenDuration = GHC.Maybe.Nothing,
      settingsDefaultTokenLength = GHC.Maybe.Nothing,
      settingsDefaultUserChangeEmail = GHC.Maybe.Nothing,
      settingsDefaultUserChangeName = GHC.Maybe.Nothing,
      settingsDefaultUserChangeUsername = GHC.Maybe.Nothing,
      settingsEventRetention = GHC.Maybe.Nothing,
      settingsFooterLinks = GHC.Maybe.Nothing,
      settingsGdprCompliance = GHC.Maybe.Nothing,
      settingsImpersonation = GHC.Maybe.Nothing,
      settingsImpersonationRequireReason = GHC.Maybe.Nothing,
      settingsReputationLowerLimit = GHC.Maybe.Nothing,
      settingsReputationUpperLimit = GHC.Maybe.Nothing
    }
