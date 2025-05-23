{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema OAuth2ProviderRequest
module AuthentikAPI.Types.OAuth2ProviderRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.RedirectURIRequest
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

-- | Defines the object schema located at @components.schemas.OAuth2ProviderRequest@ in the specification.
--
-- OAuth2Provider Serializer
data OAuth2ProviderRequest = OAuth2ProviderRequest
  { -- | access_code_validity: Access codes not valid on or after current time + this value (Format: hours=1;minutes=2;seconds=3).
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    oAuth2ProviderRequestAccessCodeValidity :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | access_token_validity: Tokens not valid on or after current time + this value (Format: hours=1;minutes=2;seconds=3).
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    oAuth2ProviderRequestAccessTokenValidity :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | authentication_flow: Flow used for authentication when the associated application is accessed by an un-authenticated user.
    oAuth2ProviderRequestAuthenticationFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | authorization_flow: Flow used when authorizing this provider.
    oAuth2ProviderRequestAuthorizationFlow :: Data.Text.Internal.Text,
    -- | client_id
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    -- * Minimum length of 1
    oAuth2ProviderRequestClientId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | client_secret
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    oAuth2ProviderRequestClientSecret :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | client_type: Confidential clients are capable of maintaining the confidentiality of their credentials. Public clients are incapable
    oAuth2ProviderRequestClientType :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | encryption_key: Key used to encrypt the tokens. When set, tokens will be encrypted and returned as JWEs.
    oAuth2ProviderRequestEncryptionKey :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | include_claims_in_id_token: Include User claims from scopes in the id_token, for applications that don\'t access the userinfo endpoint.
    oAuth2ProviderRequestIncludeClaimsInIdToken :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | invalidation_flow: Flow used ending the session from a provider.
    oAuth2ProviderRequestInvalidationFlow :: Data.Text.Internal.Text,
    -- | issuer_mode: Configure how the issuer field of the ID Token should be filled.
    oAuth2ProviderRequestIssuerMode :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | jwt_federation_providers
    oAuth2ProviderRequestJwtFederationProviders :: (GHC.Maybe.Maybe [GHC.Types.Int]),
    -- | jwt_federation_sources
    oAuth2ProviderRequestJwtFederationSources :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | name
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    oAuth2ProviderRequestName :: Data.Text.Internal.Text,
    -- | property_mappings
    oAuth2ProviderRequestPropertyMappings :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | redirect_uris
    oAuth2ProviderRequestRedirectUris :: [RedirectURIRequest],
    -- | refresh_token_validity: Tokens not valid on or after current time + this value (Format: hours=1;minutes=2;seconds=3).
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    oAuth2ProviderRequestRefreshTokenValidity :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | signing_key: Key used to sign the tokens.
    oAuth2ProviderRequestSigningKey :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | sub_mode: Configure what data should be used as unique User Identifier. For most cases, the default should be fine.
    oAuth2ProviderRequestSubMode :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OAuth2ProviderRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("access_code_validity" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestAccessCodeValidity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("access_token_validity" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestAccessTokenValidity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestAuthenticationFlow obj) : ["authorization_flow" Data.Aeson.Types.ToJSON..= oAuth2ProviderRequestAuthorizationFlow obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_id" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestClientId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_secret" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestClientSecret obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_type" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestClientType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("encryption_key" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestEncryptionKey obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("include_claims_in_id_token" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestIncludeClaimsInIdToken obj) : ["invalidation_flow" Data.Aeson.Types.ToJSON..= oAuth2ProviderRequestInvalidationFlow obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuer_mode" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestIssuerMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("jwt_federation_providers" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestJwtFederationProviders obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("jwt_federation_sources" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestJwtFederationSources obj) : ["name" Data.Aeson.Types.ToJSON..= oAuth2ProviderRequestName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("property_mappings" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestPropertyMappings obj) : ["redirect_uris" Data.Aeson.Types.ToJSON..= oAuth2ProviderRequestRedirectUris obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refresh_token_validity" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestRefreshTokenValidity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("signing_key" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestSigningKey obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sub_mode" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestSubMode obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("access_code_validity" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestAccessCodeValidity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("access_token_validity" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestAccessTokenValidity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestAuthenticationFlow obj) : ["authorization_flow" Data.Aeson.Types.ToJSON..= oAuth2ProviderRequestAuthorizationFlow obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_id" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestClientId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_secret" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestClientSecret obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_type" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestClientType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("encryption_key" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestEncryptionKey obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("include_claims_in_id_token" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestIncludeClaimsInIdToken obj) : ["invalidation_flow" Data.Aeson.Types.ToJSON..= oAuth2ProviderRequestInvalidationFlow obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuer_mode" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestIssuerMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("jwt_federation_providers" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestJwtFederationProviders obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("jwt_federation_sources" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestJwtFederationSources obj) : ["name" Data.Aeson.Types.ToJSON..= oAuth2ProviderRequestName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("property_mappings" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestPropertyMappings obj) : ["redirect_uris" Data.Aeson.Types.ToJSON..= oAuth2ProviderRequestRedirectUris obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refresh_token_validity" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestRefreshTokenValidity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("signing_key" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestSigningKey obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sub_mode" Data.Aeson.Types.ToJSON..=)) (oAuth2ProviderRequestSubMode obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON OAuth2ProviderRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OAuth2ProviderRequest" (\obj -> ((((((((((((((((((GHC.Base.pure OAuth2ProviderRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "access_code_validity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "access_token_validity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authentication_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "authorization_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "client_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "client_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "encryption_key")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "include_claims_in_id_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "invalidation_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "issuer_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "jwt_federation_providers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "jwt_federation_sources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "property_mappings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "redirect_uris")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refresh_token_validity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "signing_key")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sub_mode"))

-- | Create a new 'OAuth2ProviderRequest' with all required fields.
mkOAuth2ProviderRequest ::
  -- | 'oAuth2ProviderRequestAuthorizationFlow'
  Data.Text.Internal.Text ->
  -- | 'oAuth2ProviderRequestInvalidationFlow'
  Data.Text.Internal.Text ->
  -- | 'oAuth2ProviderRequestName'
  Data.Text.Internal.Text ->
  -- | 'oAuth2ProviderRequestRedirectUris'
  [RedirectURIRequest] ->
  OAuth2ProviderRequest
mkOAuth2ProviderRequest oAuth2ProviderRequestAuthorizationFlow oAuth2ProviderRequestInvalidationFlow oAuth2ProviderRequestName oAuth2ProviderRequestRedirectUris =
  OAuth2ProviderRequest
    { oAuth2ProviderRequestAccessCodeValidity = GHC.Maybe.Nothing,
      oAuth2ProviderRequestAccessTokenValidity = GHC.Maybe.Nothing,
      oAuth2ProviderRequestAuthenticationFlow = GHC.Maybe.Nothing,
      oAuth2ProviderRequestAuthorizationFlow = oAuth2ProviderRequestAuthorizationFlow,
      oAuth2ProviderRequestClientId = GHC.Maybe.Nothing,
      oAuth2ProviderRequestClientSecret = GHC.Maybe.Nothing,
      oAuth2ProviderRequestClientType = GHC.Maybe.Nothing,
      oAuth2ProviderRequestEncryptionKey = GHC.Maybe.Nothing,
      oAuth2ProviderRequestIncludeClaimsInIdToken = GHC.Maybe.Nothing,
      oAuth2ProviderRequestInvalidationFlow = oAuth2ProviderRequestInvalidationFlow,
      oAuth2ProviderRequestIssuerMode = GHC.Maybe.Nothing,
      oAuth2ProviderRequestJwtFederationProviders = GHC.Maybe.Nothing,
      oAuth2ProviderRequestJwtFederationSources = GHC.Maybe.Nothing,
      oAuth2ProviderRequestName = oAuth2ProviderRequestName,
      oAuth2ProviderRequestPropertyMappings = GHC.Maybe.Nothing,
      oAuth2ProviderRequestRedirectUris = oAuth2ProviderRequestRedirectUris,
      oAuth2ProviderRequestRefreshTokenValidity = GHC.Maybe.Nothing,
      oAuth2ProviderRequestSigningKey = GHC.Maybe.Nothing,
      oAuth2ProviderRequestSubMode = GHC.Maybe.Nothing
    }
