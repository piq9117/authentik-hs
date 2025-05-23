{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PatchedLDAPProviderRequest
module AuthentikAPI.Types.PatchedLDAPProviderRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.LDAPAPIAccessMode
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

-- | Defines the object schema located at @components.schemas.PatchedLDAPProviderRequest@ in the specification.
--
-- LDAPProvider Serializer
data PatchedLDAPProviderRequest = PatchedLDAPProviderRequest
  { -- | authentication_flow: Flow used for authentication when the associated application is accessed by an un-authenticated user.
    patchedLDAPProviderRequestAuthenticationFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | authorization_flow: Flow used when authorizing this provider.
    patchedLDAPProviderRequestAuthorizationFlow :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | base_dn: DN under which objects are accessible.
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedLDAPProviderRequestBaseDn :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | bind_mode
    patchedLDAPProviderRequestBindMode :: (GHC.Maybe.Maybe LDAPAPIAccessMode),
    -- | certificate
    patchedLDAPProviderRequestCertificate :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | gid_start_number: The start for gidNumbers, this number is added to a number generated from the group.pk to make sure that the numbers aren\'t too low for POSIX groups. Default is 4000 to ensure that we don\'t collide with local groups or users primary groups gidNumber
    --
    -- Constraints:
    --
    -- * Maxium  of 2.1474836e9
    -- * Minimum  of -2.1474836e9
    patchedLDAPProviderRequestGidStartNumber :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | invalidation_flow: Flow used ending the session from a provider.
    patchedLDAPProviderRequestInvalidationFlow :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | mfa_support: When enabled, code-based multi-factor authentication can be used by appending a semicolon and the TOTP code to the password. This should only be enabled if all users that will bind to this provider have a TOTP device configured, as otherwise a password may incorrectly be rejected if it contains a semicolon.
    patchedLDAPProviderRequestMfaSupport :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | name
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedLDAPProviderRequestName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | property_mappings
    patchedLDAPProviderRequestPropertyMappings :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | search_mode
    patchedLDAPProviderRequestSearchMode :: (GHC.Maybe.Maybe LDAPAPIAccessMode),
    -- | tls_server_name
    patchedLDAPProviderRequestTlsServerName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | uid_start_number: The start for uidNumbers, this number is added to the user.pk to make sure that the numbers aren\'t too low for POSIX users. Default is 2000 to ensure that we don\'t collide with local users uidNumber
    --
    -- Constraints:
    --
    -- * Maxium  of 2.1474836e9
    -- * Minimum  of -2.1474836e9
    patchedLDAPProviderRequestUidStartNumber :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PatchedLDAPProviderRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestAuthenticationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_flow" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestAuthorizationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("base_dn" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestBaseDn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bind_mode" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestBindMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("certificate" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestCertificate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gid_start_number" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestGidStartNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invalidation_flow" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestInvalidationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mfa_support" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestMfaSupport obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("property_mappings" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestPropertyMappings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("search_mode" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestSearchMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tls_server_name" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestTlsServerName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("uid_start_number" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestUidStartNumber obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestAuthenticationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_flow" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestAuthorizationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("base_dn" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestBaseDn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bind_mode" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestBindMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("certificate" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestCertificate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gid_start_number" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestGidStartNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invalidation_flow" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestInvalidationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mfa_support" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestMfaSupport obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("property_mappings" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestPropertyMappings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("search_mode" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestSearchMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tls_server_name" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestTlsServerName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("uid_start_number" Data.Aeson.Types.ToJSON..=)) (patchedLDAPProviderRequestUidStartNumber obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PatchedLDAPProviderRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PatchedLDAPProviderRequest" (\obj -> ((((((((((((GHC.Base.pure PatchedLDAPProviderRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authentication_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authorization_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "base_dn")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bind_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "certificate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gid_start_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "invalidation_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mfa_support")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "property_mappings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "search_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tls_server_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "uid_start_number"))

-- | Create a new 'PatchedLDAPProviderRequest' with all required fields.
mkPatchedLDAPProviderRequest :: PatchedLDAPProviderRequest
mkPatchedLDAPProviderRequest =
  PatchedLDAPProviderRequest
    { patchedLDAPProviderRequestAuthenticationFlow = GHC.Maybe.Nothing,
      patchedLDAPProviderRequestAuthorizationFlow = GHC.Maybe.Nothing,
      patchedLDAPProviderRequestBaseDn = GHC.Maybe.Nothing,
      patchedLDAPProviderRequestBindMode = GHC.Maybe.Nothing,
      patchedLDAPProviderRequestCertificate = GHC.Maybe.Nothing,
      patchedLDAPProviderRequestGidStartNumber = GHC.Maybe.Nothing,
      patchedLDAPProviderRequestInvalidationFlow = GHC.Maybe.Nothing,
      patchedLDAPProviderRequestMfaSupport = GHC.Maybe.Nothing,
      patchedLDAPProviderRequestName = GHC.Maybe.Nothing,
      patchedLDAPProviderRequestPropertyMappings = GHC.Maybe.Nothing,
      patchedLDAPProviderRequestSearchMode = GHC.Maybe.Nothing,
      patchedLDAPProviderRequestTlsServerName = GHC.Maybe.Nothing,
      patchedLDAPProviderRequestUidStartNumber = GHC.Maybe.Nothing
    }
