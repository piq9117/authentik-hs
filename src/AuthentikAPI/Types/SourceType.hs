{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SourceType
module AuthentikAPI.Types.SourceType where

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

-- | Defines the object schema located at @components.schemas.SourceType@ in the specification.
--
-- Serializer for SourceType
data SourceType = SourceType
  { -- | access_token_url
    sourceTypeAccessTokenUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | authorization_url
    sourceTypeAuthorizationUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | name
    sourceTypeName :: Data.Text.Internal.Text,
    -- | oidc_jwks_url
    sourceTypeOidcJwksUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | oidc_well_known_url
    sourceTypeOidcWellKnownUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | profile_url
    sourceTypeProfileUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | request_token_url
    sourceTypeRequestTokenUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | urls_customizable
    sourceTypeUrlsCustomizable :: GHC.Types.Bool,
    -- | verbose_name
    sourceTypeVerboseName :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceType where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["access_token_url" Data.Aeson.Types.ToJSON..= sourceTypeAccessTokenUrl obj] : ["authorization_url" Data.Aeson.Types.ToJSON..= sourceTypeAuthorizationUrl obj] : ["name" Data.Aeson.Types.ToJSON..= sourceTypeName obj] : ["oidc_jwks_url" Data.Aeson.Types.ToJSON..= sourceTypeOidcJwksUrl obj] : ["oidc_well_known_url" Data.Aeson.Types.ToJSON..= sourceTypeOidcWellKnownUrl obj] : ["profile_url" Data.Aeson.Types.ToJSON..= sourceTypeProfileUrl obj] : ["request_token_url" Data.Aeson.Types.ToJSON..= sourceTypeRequestTokenUrl obj] : ["urls_customizable" Data.Aeson.Types.ToJSON..= sourceTypeUrlsCustomizable obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= sourceTypeVerboseName obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["access_token_url" Data.Aeson.Types.ToJSON..= sourceTypeAccessTokenUrl obj] : ["authorization_url" Data.Aeson.Types.ToJSON..= sourceTypeAuthorizationUrl obj] : ["name" Data.Aeson.Types.ToJSON..= sourceTypeName obj] : ["oidc_jwks_url" Data.Aeson.Types.ToJSON..= sourceTypeOidcJwksUrl obj] : ["oidc_well_known_url" Data.Aeson.Types.ToJSON..= sourceTypeOidcWellKnownUrl obj] : ["profile_url" Data.Aeson.Types.ToJSON..= sourceTypeProfileUrl obj] : ["request_token_url" Data.Aeson.Types.ToJSON..= sourceTypeRequestTokenUrl obj] : ["urls_customizable" Data.Aeson.Types.ToJSON..= sourceTypeUrlsCustomizable obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= sourceTypeVerboseName obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SourceType where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceType" (\obj -> ((((((((GHC.Base.pure SourceType GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "access_token_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "authorization_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "oidc_jwks_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "oidc_well_known_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "profile_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "request_token_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "urls_customizable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name"))

-- | Create a new 'SourceType' with all required fields.
mkSourceType ::
  -- | 'sourceTypeAccessTokenUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'sourceTypeAuthorizationUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'sourceTypeName'
  Data.Text.Internal.Text ->
  -- | 'sourceTypeOidcJwksUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'sourceTypeOidcWellKnownUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'sourceTypeProfileUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'sourceTypeRequestTokenUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'sourceTypeUrlsCustomizable'
  GHC.Types.Bool ->
  -- | 'sourceTypeVerboseName'
  Data.Text.Internal.Text ->
  SourceType
mkSourceType sourceTypeAccessTokenUrl sourceTypeAuthorizationUrl sourceTypeName sourceTypeOidcJwksUrl sourceTypeOidcWellKnownUrl sourceTypeProfileUrl sourceTypeRequestTokenUrl sourceTypeUrlsCustomizable sourceTypeVerboseName =
  SourceType
    { sourceTypeAccessTokenUrl = sourceTypeAccessTokenUrl,
      sourceTypeAuthorizationUrl = sourceTypeAuthorizationUrl,
      sourceTypeName = sourceTypeName,
      sourceTypeOidcJwksUrl = sourceTypeOidcJwksUrl,
      sourceTypeOidcWellKnownUrl = sourceTypeOidcWellKnownUrl,
      sourceTypeProfileUrl = sourceTypeProfileUrl,
      sourceTypeRequestTokenUrl = sourceTypeRequestTokenUrl,
      sourceTypeUrlsCustomizable = sourceTypeUrlsCustomizable,
      sourceTypeVerboseName = sourceTypeVerboseName
    }
