{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema KerberosSourceRequest
module AuthentikAPI.Types.KerberosSourceRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.PolicyEngineMode
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

-- | Defines the object schema located at @components.schemas.KerberosSourceRequest@ in the specification.
--
-- Kerberos Source Serializer
data KerberosSourceRequest = KerberosSourceRequest
  { -- | authentication_flow: Flow to use when authenticating existing users.
    kerberosSourceRequestAuthenticationFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | enabled
    kerberosSourceRequestEnabled :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | enrollment_flow: Flow to use when enrolling new users.
    kerberosSourceRequestEnrollmentFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | group_matching_mode: How the source determines if an existing group should be used or a new group created.
    kerberosSourceRequestGroupMatchingMode :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | group_property_mappings
    kerberosSourceRequestGroupPropertyMappings :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | kadmin_type: KAdmin server type
    kerberosSourceRequestKadminType :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | krb5_conf: Custom krb5.conf to use. Uses the system one by default
    kerberosSourceRequestKrb5Conf :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | name: Source\'s display Name.
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    kerberosSourceRequestName :: Data.Text.Internal.Text,
    -- | password_login_update_internal_password: If enabled, the authentik-stored password will be updated upon login with the Kerberos password backend
    kerberosSourceRequestPasswordLoginUpdateInternalPassword :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | policy_engine_mode
    kerberosSourceRequestPolicyEngineMode :: (GHC.Maybe.Maybe PolicyEngineMode),
    -- | realm: Kerberos realm
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    kerberosSourceRequestRealm :: Data.Text.Internal.Text,
    -- | slug: Internal source name, used in URLs.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    -- * Minimum length of 1
    -- * Must match pattern \'^[-a-zA-Z0-9_]+\$\'
    kerberosSourceRequestSlug :: Data.Text.Internal.Text,
    -- | spnego_ccache: Credential cache to use for SPNEGO in form type:residual
    kerberosSourceRequestSpnegoCcache :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | spnego_keytab: SPNEGO keytab base64-encoded or path to keytab in the form FILE:path
    kerberosSourceRequestSpnegoKeytab :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | spnego_server_name: Force the use of a specific server name for SPNEGO. Must be in the form HTTP\@hostname
    kerberosSourceRequestSpnegoServerName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | sync_ccache: Credentials cache to authenticate to kadmin for sync. Must be in the form TYPE:residual
    kerberosSourceRequestSyncCcache :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | sync_keytab: Keytab to authenticate to kadmin for sync. Must be base64-encoded or in the form TYPE:residual
    kerberosSourceRequestSyncKeytab :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | sync_password: Password to authenticate to kadmin for sync
    kerberosSourceRequestSyncPassword :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | sync_principal: Principal to authenticate to kadmin for sync.
    kerberosSourceRequestSyncPrincipal :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | sync_users: Sync users from Kerberos into authentik
    kerberosSourceRequestSyncUsers :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | sync_users_password: When a user changes their password, sync it back to Kerberos
    kerberosSourceRequestSyncUsersPassword :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | user_matching_mode: How the source determines if an existing user should be authenticated or a new user enrolled.
    kerberosSourceRequestUserMatchingMode :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | user_path_template
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    kerberosSourceRequestUserPathTemplate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | user_property_mappings
    kerberosSourceRequestUserPropertyMappings :: (GHC.Maybe.Maybe [Data.Text.Internal.Text])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON KerberosSourceRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestAuthenticationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enrollment_flow" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestEnrollmentFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_matching_mode" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestGroupMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_property_mappings" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestGroupPropertyMappings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("kadmin_type" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestKadminType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("krb5_conf" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestKrb5Conf obj) : ["name" Data.Aeson.Types.ToJSON..= kerberosSourceRequestName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("password_login_update_internal_password" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestPasswordLoginUpdateInternalPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("policy_engine_mode" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestPolicyEngineMode obj) : ["realm" Data.Aeson.Types.ToJSON..= kerberosSourceRequestRealm obj] : ["slug" Data.Aeson.Types.ToJSON..= kerberosSourceRequestSlug obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("spnego_ccache" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSpnegoCcache obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("spnego_keytab" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSpnegoKeytab obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("spnego_server_name" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSpnegoServerName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_ccache" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSyncCcache obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_keytab" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSyncKeytab obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_password" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSyncPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_principal" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSyncPrincipal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_users" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSyncUsers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_users_password" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSyncUsersPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_matching_mode" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestUserMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_path_template" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestUserPathTemplate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_property_mappings" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestUserPropertyMappings obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestAuthenticationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enrollment_flow" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestEnrollmentFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_matching_mode" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestGroupMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_property_mappings" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestGroupPropertyMappings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("kadmin_type" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestKadminType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("krb5_conf" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestKrb5Conf obj) : ["name" Data.Aeson.Types.ToJSON..= kerberosSourceRequestName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("password_login_update_internal_password" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestPasswordLoginUpdateInternalPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("policy_engine_mode" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestPolicyEngineMode obj) : ["realm" Data.Aeson.Types.ToJSON..= kerberosSourceRequestRealm obj] : ["slug" Data.Aeson.Types.ToJSON..= kerberosSourceRequestSlug obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("spnego_ccache" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSpnegoCcache obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("spnego_keytab" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSpnegoKeytab obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("spnego_server_name" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSpnegoServerName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_ccache" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSyncCcache obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_keytab" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSyncKeytab obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_password" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSyncPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_principal" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSyncPrincipal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_users" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSyncUsers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_users_password" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestSyncUsersPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_matching_mode" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestUserMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_path_template" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestUserPathTemplate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_property_mappings" Data.Aeson.Types.ToJSON..=)) (kerberosSourceRequestUserPropertyMappings obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON KerberosSourceRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "KerberosSourceRequest" (\obj -> (((((((((((((((((((((((GHC.Base.pure KerberosSourceRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authentication_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enrollment_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "group_matching_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "group_property_mappings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "kadmin_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "krb5_conf")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "password_login_update_internal_password")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "policy_engine_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "realm")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "slug")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "spnego_ccache")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "spnego_keytab")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "spnego_server_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sync_ccache")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sync_keytab")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sync_password")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sync_principal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sync_users")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sync_users_password")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_matching_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_path_template")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_property_mappings"))

-- | Create a new 'KerberosSourceRequest' with all required fields.
mkKerberosSourceRequest ::
  -- | 'kerberosSourceRequestName'
  Data.Text.Internal.Text ->
  -- | 'kerberosSourceRequestRealm'
  Data.Text.Internal.Text ->
  -- | 'kerberosSourceRequestSlug'
  Data.Text.Internal.Text ->
  KerberosSourceRequest
mkKerberosSourceRequest kerberosSourceRequestName kerberosSourceRequestRealm kerberosSourceRequestSlug =
  KerberosSourceRequest
    { kerberosSourceRequestAuthenticationFlow = GHC.Maybe.Nothing,
      kerberosSourceRequestEnabled = GHC.Maybe.Nothing,
      kerberosSourceRequestEnrollmentFlow = GHC.Maybe.Nothing,
      kerberosSourceRequestGroupMatchingMode = GHC.Maybe.Nothing,
      kerberosSourceRequestGroupPropertyMappings = GHC.Maybe.Nothing,
      kerberosSourceRequestKadminType = GHC.Maybe.Nothing,
      kerberosSourceRequestKrb5Conf = GHC.Maybe.Nothing,
      kerberosSourceRequestName = kerberosSourceRequestName,
      kerberosSourceRequestPasswordLoginUpdateInternalPassword = GHC.Maybe.Nothing,
      kerberosSourceRequestPolicyEngineMode = GHC.Maybe.Nothing,
      kerberosSourceRequestRealm = kerberosSourceRequestRealm,
      kerberosSourceRequestSlug = kerberosSourceRequestSlug,
      kerberosSourceRequestSpnegoCcache = GHC.Maybe.Nothing,
      kerberosSourceRequestSpnegoKeytab = GHC.Maybe.Nothing,
      kerberosSourceRequestSpnegoServerName = GHC.Maybe.Nothing,
      kerberosSourceRequestSyncCcache = GHC.Maybe.Nothing,
      kerberosSourceRequestSyncKeytab = GHC.Maybe.Nothing,
      kerberosSourceRequestSyncPassword = GHC.Maybe.Nothing,
      kerberosSourceRequestSyncPrincipal = GHC.Maybe.Nothing,
      kerberosSourceRequestSyncUsers = GHC.Maybe.Nothing,
      kerberosSourceRequestSyncUsersPassword = GHC.Maybe.Nothing,
      kerberosSourceRequestUserMatchingMode = GHC.Maybe.Nothing,
      kerberosSourceRequestUserPathTemplate = GHC.Maybe.Nothing,
      kerberosSourceRequestUserPropertyMappings = GHC.Maybe.Nothing
    }
