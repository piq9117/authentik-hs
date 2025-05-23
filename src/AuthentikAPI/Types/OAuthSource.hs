{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema OAuthSource
module AuthentikAPI.Types.OAuthSource where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.PolicyEngineMode
import {-# SOURCE #-} AuthentikAPI.Types.ProviderTypeEnum
import {-# SOURCE #-} AuthentikAPI.Types.SourceType
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

-- | Defines the object schema located at @components.schemas.OAuthSource@ in the specification.
--
-- OAuth Source Serializer
data OAuthSource = OAuthSource
  { -- | access_token_url: URL used by authentik to retrieve tokens.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    oAuthSourceAccessTokenUrl :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | additional_scopes
    oAuthSourceAdditionalScopes :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | authentication_flow: Flow to use when authenticating existing users.
    oAuthSourceAuthenticationFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | authorization_code_auth_method: How to perform authentication during an authorization_code token request flow
    oAuthSourceAuthorizationCodeAuthMethod :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | authorization_url: URL the user is redirect to to conest the flow.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    oAuthSourceAuthorizationUrl :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | callback_url: Get OAuth Callback URL
    oAuthSourceCallbackUrl :: Data.Text.Internal.Text,
    -- | component: Get object component so that we know how to edit the object
    oAuthSourceComponent :: Data.Text.Internal.Text,
    -- | consumer_key
    oAuthSourceConsumerKey :: Data.Text.Internal.Text,
    -- | enabled
    oAuthSourceEnabled :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | enrollment_flow: Flow to use when enrolling new users.
    oAuthSourceEnrollmentFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | group_matching_mode: How the source determines if an existing group should be used or a new group created.
    oAuthSourceGroupMatchingMode :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | group_property_mappings
    oAuthSourceGroupPropertyMappings :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | icon
    oAuthSourceIcon :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | managed: Objects that are managed by authentik. These objects are created and updated automatically. This flag only indicates that an object can be overwritten by migrations. You can still modify the objects via the API, but expect changes to be overwritten in a later update.
    oAuthSourceManaged :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | meta_model_name: Return internal model name
    oAuthSourceMetaModelName :: Data.Text.Internal.Text,
    -- | name: Source\'s display Name.
    oAuthSourceName :: Data.Text.Internal.Text,
    -- | oidc_jwks
    oAuthSourceOidcJwks :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | oidc_jwks_url
    oAuthSourceOidcJwksUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | oidc_well_known_url
    oAuthSourceOidcWellKnownUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | pk
    oAuthSourcePk :: Data.Text.Internal.Text,
    -- | policy_engine_mode
    oAuthSourcePolicyEngineMode :: (GHC.Maybe.Maybe PolicyEngineMode),
    -- | profile_url: URL used by authentik to get user information.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    oAuthSourceProfileUrl :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | provider_type
    oAuthSourceProviderType :: ProviderTypeEnum,
    -- | request_token_url: URL used to request the initial token. This URL is only required for OAuth 1.
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    oAuthSourceRequestTokenUrl :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | slug: Internal source name, used in URLs.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    -- * Must match pattern \'^[-a-zA-Z0-9_]+\$\'
    oAuthSourceSlug :: Data.Text.Internal.Text,
    -- | type
    oAuthSourceType :: OAuthSourceType',
    -- | user_matching_mode: How the source determines if an existing user should be authenticated or a new user enrolled.
    oAuthSourceUserMatchingMode :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | user_path_template
    oAuthSourceUserPathTemplate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | user_property_mappings
    oAuthSourceUserPropertyMappings :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | verbose_name: Return object\'s verbose_name
    oAuthSourceVerboseName :: Data.Text.Internal.Text,
    -- | verbose_name_plural: Return object\'s plural verbose_name
    oAuthSourceVerboseNamePlural :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OAuthSource where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("access_token_url" Data.Aeson.Types.ToJSON..=)) (oAuthSourceAccessTokenUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_scopes" Data.Aeson.Types.ToJSON..=)) (oAuthSourceAdditionalScopes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (oAuthSourceAuthenticationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_code_auth_method" Data.Aeson.Types.ToJSON..=)) (oAuthSourceAuthorizationCodeAuthMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_url" Data.Aeson.Types.ToJSON..=)) (oAuthSourceAuthorizationUrl obj) : ["callback_url" Data.Aeson.Types.ToJSON..= oAuthSourceCallbackUrl obj] : ["component" Data.Aeson.Types.ToJSON..= oAuthSourceComponent obj] : ["consumer_key" Data.Aeson.Types.ToJSON..= oAuthSourceConsumerKey obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (oAuthSourceEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enrollment_flow" Data.Aeson.Types.ToJSON..=)) (oAuthSourceEnrollmentFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_matching_mode" Data.Aeson.Types.ToJSON..=)) (oAuthSourceGroupMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_property_mappings" Data.Aeson.Types.ToJSON..=)) (oAuthSourceGroupPropertyMappings obj) : ["icon" Data.Aeson.Types.ToJSON..= oAuthSourceIcon obj] : ["managed" Data.Aeson.Types.ToJSON..= oAuthSourceManaged obj] : ["meta_model_name" Data.Aeson.Types.ToJSON..= oAuthSourceMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= oAuthSourceName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oidc_jwks" Data.Aeson.Types.ToJSON..=)) (oAuthSourceOidcJwks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oidc_jwks_url" Data.Aeson.Types.ToJSON..=)) (oAuthSourceOidcJwksUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oidc_well_known_url" Data.Aeson.Types.ToJSON..=)) (oAuthSourceOidcWellKnownUrl obj) : ["pk" Data.Aeson.Types.ToJSON..= oAuthSourcePk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("policy_engine_mode" Data.Aeson.Types.ToJSON..=)) (oAuthSourcePolicyEngineMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("profile_url" Data.Aeson.Types.ToJSON..=)) (oAuthSourceProfileUrl obj) : ["provider_type" Data.Aeson.Types.ToJSON..= oAuthSourceProviderType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("request_token_url" Data.Aeson.Types.ToJSON..=)) (oAuthSourceRequestTokenUrl obj) : ["slug" Data.Aeson.Types.ToJSON..= oAuthSourceSlug obj] : ["type" Data.Aeson.Types.ToJSON..= oAuthSourceType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_matching_mode" Data.Aeson.Types.ToJSON..=)) (oAuthSourceUserMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_path_template" Data.Aeson.Types.ToJSON..=)) (oAuthSourceUserPathTemplate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_property_mappings" Data.Aeson.Types.ToJSON..=)) (oAuthSourceUserPropertyMappings obj) : ["verbose_name" Data.Aeson.Types.ToJSON..= oAuthSourceVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= oAuthSourceVerboseNamePlural obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("access_token_url" Data.Aeson.Types.ToJSON..=)) (oAuthSourceAccessTokenUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_scopes" Data.Aeson.Types.ToJSON..=)) (oAuthSourceAdditionalScopes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (oAuthSourceAuthenticationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_code_auth_method" Data.Aeson.Types.ToJSON..=)) (oAuthSourceAuthorizationCodeAuthMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_url" Data.Aeson.Types.ToJSON..=)) (oAuthSourceAuthorizationUrl obj) : ["callback_url" Data.Aeson.Types.ToJSON..= oAuthSourceCallbackUrl obj] : ["component" Data.Aeson.Types.ToJSON..= oAuthSourceComponent obj] : ["consumer_key" Data.Aeson.Types.ToJSON..= oAuthSourceConsumerKey obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (oAuthSourceEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enrollment_flow" Data.Aeson.Types.ToJSON..=)) (oAuthSourceEnrollmentFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_matching_mode" Data.Aeson.Types.ToJSON..=)) (oAuthSourceGroupMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_property_mappings" Data.Aeson.Types.ToJSON..=)) (oAuthSourceGroupPropertyMappings obj) : ["icon" Data.Aeson.Types.ToJSON..= oAuthSourceIcon obj] : ["managed" Data.Aeson.Types.ToJSON..= oAuthSourceManaged obj] : ["meta_model_name" Data.Aeson.Types.ToJSON..= oAuthSourceMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= oAuthSourceName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oidc_jwks" Data.Aeson.Types.ToJSON..=)) (oAuthSourceOidcJwks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oidc_jwks_url" Data.Aeson.Types.ToJSON..=)) (oAuthSourceOidcJwksUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oidc_well_known_url" Data.Aeson.Types.ToJSON..=)) (oAuthSourceOidcWellKnownUrl obj) : ["pk" Data.Aeson.Types.ToJSON..= oAuthSourcePk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("policy_engine_mode" Data.Aeson.Types.ToJSON..=)) (oAuthSourcePolicyEngineMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("profile_url" Data.Aeson.Types.ToJSON..=)) (oAuthSourceProfileUrl obj) : ["provider_type" Data.Aeson.Types.ToJSON..= oAuthSourceProviderType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("request_token_url" Data.Aeson.Types.ToJSON..=)) (oAuthSourceRequestTokenUrl obj) : ["slug" Data.Aeson.Types.ToJSON..= oAuthSourceSlug obj] : ["type" Data.Aeson.Types.ToJSON..= oAuthSourceType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_matching_mode" Data.Aeson.Types.ToJSON..=)) (oAuthSourceUserMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_path_template" Data.Aeson.Types.ToJSON..=)) (oAuthSourceUserPathTemplate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_property_mappings" Data.Aeson.Types.ToJSON..=)) (oAuthSourceUserPropertyMappings obj) : ["verbose_name" Data.Aeson.Types.ToJSON..= oAuthSourceVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= oAuthSourceVerboseNamePlural obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON OAuthSource where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OAuthSource" (\obj -> ((((((((((((((((((((((((((((((GHC.Base.pure OAuthSource GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "access_token_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "additional_scopes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authentication_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authorization_code_auth_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authorization_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "callback_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "consumer_key")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enrollment_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "group_matching_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "group_property_mappings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "icon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "managed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "meta_model_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "oidc_jwks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "oidc_jwks_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "oidc_well_known_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "policy_engine_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "profile_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "provider_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "request_token_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "slug")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_matching_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_path_template")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_property_mappings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name_plural"))

-- | Create a new 'OAuthSource' with all required fields.
mkOAuthSource ::
  -- | 'oAuthSourceCallbackUrl'
  Data.Text.Internal.Text ->
  -- | 'oAuthSourceComponent'
  Data.Text.Internal.Text ->
  -- | 'oAuthSourceConsumerKey'
  Data.Text.Internal.Text ->
  -- | 'oAuthSourceIcon'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'oAuthSourceManaged'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'oAuthSourceMetaModelName'
  Data.Text.Internal.Text ->
  -- | 'oAuthSourceName'
  Data.Text.Internal.Text ->
  -- | 'oAuthSourcePk'
  Data.Text.Internal.Text ->
  -- | 'oAuthSourceProviderType'
  ProviderTypeEnum ->
  -- | 'oAuthSourceSlug'
  Data.Text.Internal.Text ->
  -- | 'oAuthSourceType'
  OAuthSourceType' ->
  -- | 'oAuthSourceVerboseName'
  Data.Text.Internal.Text ->
  -- | 'oAuthSourceVerboseNamePlural'
  Data.Text.Internal.Text ->
  OAuthSource
mkOAuthSource oAuthSourceCallbackUrl oAuthSourceComponent oAuthSourceConsumerKey oAuthSourceIcon oAuthSourceManaged oAuthSourceMetaModelName oAuthSourceName oAuthSourcePk oAuthSourceProviderType oAuthSourceSlug oAuthSourceType oAuthSourceVerboseName oAuthSourceVerboseNamePlural =
  OAuthSource
    { oAuthSourceAccessTokenUrl = GHC.Maybe.Nothing,
      oAuthSourceAdditionalScopes = GHC.Maybe.Nothing,
      oAuthSourceAuthenticationFlow = GHC.Maybe.Nothing,
      oAuthSourceAuthorizationCodeAuthMethod = GHC.Maybe.Nothing,
      oAuthSourceAuthorizationUrl = GHC.Maybe.Nothing,
      oAuthSourceCallbackUrl = oAuthSourceCallbackUrl,
      oAuthSourceComponent = oAuthSourceComponent,
      oAuthSourceConsumerKey = oAuthSourceConsumerKey,
      oAuthSourceEnabled = GHC.Maybe.Nothing,
      oAuthSourceEnrollmentFlow = GHC.Maybe.Nothing,
      oAuthSourceGroupMatchingMode = GHC.Maybe.Nothing,
      oAuthSourceGroupPropertyMappings = GHC.Maybe.Nothing,
      oAuthSourceIcon = oAuthSourceIcon,
      oAuthSourceManaged = oAuthSourceManaged,
      oAuthSourceMetaModelName = oAuthSourceMetaModelName,
      oAuthSourceName = oAuthSourceName,
      oAuthSourceOidcJwks = GHC.Maybe.Nothing,
      oAuthSourceOidcJwksUrl = GHC.Maybe.Nothing,
      oAuthSourceOidcWellKnownUrl = GHC.Maybe.Nothing,
      oAuthSourcePk = oAuthSourcePk,
      oAuthSourcePolicyEngineMode = GHC.Maybe.Nothing,
      oAuthSourceProfileUrl = GHC.Maybe.Nothing,
      oAuthSourceProviderType = oAuthSourceProviderType,
      oAuthSourceRequestTokenUrl = GHC.Maybe.Nothing,
      oAuthSourceSlug = oAuthSourceSlug,
      oAuthSourceType = oAuthSourceType,
      oAuthSourceUserMatchingMode = GHC.Maybe.Nothing,
      oAuthSourceUserPathTemplate = GHC.Maybe.Nothing,
      oAuthSourceUserPropertyMappings = GHC.Maybe.Nothing,
      oAuthSourceVerboseName = oAuthSourceVerboseName,
      oAuthSourceVerboseNamePlural = oAuthSourceVerboseNamePlural
    }

-- | Defines the object schema located at @components.schemas.OAuthSource.properties.type.allOf@ in the specification.
data OAuthSourceType' = OAuthSourceType'
  { -- | access_token_url
    oAuthSourceType'AccessTokenUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | authorization_url
    oAuthSourceType'AuthorizationUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | name
    oAuthSourceType'Name :: Data.Text.Internal.Text,
    -- | oidc_jwks_url
    oAuthSourceType'OidcJwksUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | oidc_well_known_url
    oAuthSourceType'OidcWellKnownUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | profile_url
    oAuthSourceType'ProfileUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | request_token_url
    oAuthSourceType'RequestTokenUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | urls_customizable
    oAuthSourceType'UrlsCustomizable :: GHC.Types.Bool,
    -- | verbose_name
    oAuthSourceType'VerboseName :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OAuthSourceType' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["access_token_url" Data.Aeson.Types.ToJSON..= oAuthSourceType'AccessTokenUrl obj] : ["authorization_url" Data.Aeson.Types.ToJSON..= oAuthSourceType'AuthorizationUrl obj] : ["name" Data.Aeson.Types.ToJSON..= oAuthSourceType'Name obj] : ["oidc_jwks_url" Data.Aeson.Types.ToJSON..= oAuthSourceType'OidcJwksUrl obj] : ["oidc_well_known_url" Data.Aeson.Types.ToJSON..= oAuthSourceType'OidcWellKnownUrl obj] : ["profile_url" Data.Aeson.Types.ToJSON..= oAuthSourceType'ProfileUrl obj] : ["request_token_url" Data.Aeson.Types.ToJSON..= oAuthSourceType'RequestTokenUrl obj] : ["urls_customizable" Data.Aeson.Types.ToJSON..= oAuthSourceType'UrlsCustomizable obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= oAuthSourceType'VerboseName obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["access_token_url" Data.Aeson.Types.ToJSON..= oAuthSourceType'AccessTokenUrl obj] : ["authorization_url" Data.Aeson.Types.ToJSON..= oAuthSourceType'AuthorizationUrl obj] : ["name" Data.Aeson.Types.ToJSON..= oAuthSourceType'Name obj] : ["oidc_jwks_url" Data.Aeson.Types.ToJSON..= oAuthSourceType'OidcJwksUrl obj] : ["oidc_well_known_url" Data.Aeson.Types.ToJSON..= oAuthSourceType'OidcWellKnownUrl obj] : ["profile_url" Data.Aeson.Types.ToJSON..= oAuthSourceType'ProfileUrl obj] : ["request_token_url" Data.Aeson.Types.ToJSON..= oAuthSourceType'RequestTokenUrl obj] : ["urls_customizable" Data.Aeson.Types.ToJSON..= oAuthSourceType'UrlsCustomizable obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= oAuthSourceType'VerboseName obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON OAuthSourceType' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OAuthSourceType'" (\obj -> ((((((((GHC.Base.pure OAuthSourceType' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "access_token_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "authorization_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "oidc_jwks_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "oidc_well_known_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "profile_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "request_token_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "urls_customizable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name"))

-- | Create a new 'OAuthSourceType'' with all required fields.
mkOAuthSourceType' ::
  -- | 'oAuthSourceType'AccessTokenUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'oAuthSourceType'AuthorizationUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'oAuthSourceType'Name'
  Data.Text.Internal.Text ->
  -- | 'oAuthSourceType'OidcJwksUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'oAuthSourceType'OidcWellKnownUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'oAuthSourceType'ProfileUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'oAuthSourceType'RequestTokenUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'oAuthSourceType'UrlsCustomizable'
  GHC.Types.Bool ->
  -- | 'oAuthSourceType'VerboseName'
  Data.Text.Internal.Text ->
  OAuthSourceType'
mkOAuthSourceType' oAuthSourceType'AccessTokenUrl oAuthSourceType'AuthorizationUrl oAuthSourceType'Name oAuthSourceType'OidcJwksUrl oAuthSourceType'OidcWellKnownUrl oAuthSourceType'ProfileUrl oAuthSourceType'RequestTokenUrl oAuthSourceType'UrlsCustomizable oAuthSourceType'VerboseName =
  OAuthSourceType'
    { oAuthSourceType'AccessTokenUrl = oAuthSourceType'AccessTokenUrl,
      oAuthSourceType'AuthorizationUrl = oAuthSourceType'AuthorizationUrl,
      oAuthSourceType'Name = oAuthSourceType'Name,
      oAuthSourceType'OidcJwksUrl = oAuthSourceType'OidcJwksUrl,
      oAuthSourceType'OidcWellKnownUrl = oAuthSourceType'OidcWellKnownUrl,
      oAuthSourceType'ProfileUrl = oAuthSourceType'ProfileUrl,
      oAuthSourceType'RequestTokenUrl = oAuthSourceType'RequestTokenUrl,
      oAuthSourceType'UrlsCustomizable = oAuthSourceType'UrlsCustomizable,
      oAuthSourceType'VerboseName = oAuthSourceType'VerboseName
    }
