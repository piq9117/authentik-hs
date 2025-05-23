{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema LDAPSourceRequest
module AuthentikAPI.Types.LDAPSourceRequest where

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

-- | Defines the object schema located at @components.schemas.LDAPSourceRequest@ in the specification.
--
-- LDAP Source Serializer
data LDAPSourceRequest = LDAPSourceRequest
  { -- | additional_group_dn: Prepended to Base DN for Group-queries.
    lDAPSourceRequestAdditionalGroupDn :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | additional_user_dn: Prepended to Base DN for User-queries.
    lDAPSourceRequestAdditionalUserDn :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | authentication_flow: Flow to use when authenticating existing users.
    lDAPSourceRequestAuthenticationFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | base_dn
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    lDAPSourceRequestBaseDn :: Data.Text.Internal.Text,
    -- | bind_cn
    lDAPSourceRequestBindCn :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | bind_password
    lDAPSourceRequestBindPassword :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | client_certificate: Client certificate to authenticate against the LDAP Server\'s Certificate.
    lDAPSourceRequestClientCertificate :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | enabled
    lDAPSourceRequestEnabled :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | enrollment_flow: Flow to use when enrolling new users.
    lDAPSourceRequestEnrollmentFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | group_membership_field: Field which contains members of a group.
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    lDAPSourceRequestGroupMembershipField :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | group_object_filter: Consider Objects matching this filter to be Groups.
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    lDAPSourceRequestGroupObjectFilter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | group_property_mappings
    lDAPSourceRequestGroupPropertyMappings :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | lookup_groups_from_user: Lookup group membership based on a user attribute instead of a group attribute. This allows nested group resolution on systems like FreeIPA and Active Directory
    lDAPSourceRequestLookupGroupsFromUser :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | name: Source\'s display Name.
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    lDAPSourceRequestName :: Data.Text.Internal.Text,
    -- | object_uniqueness_field: Field which contains a unique Identifier.
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    lDAPSourceRequestObjectUniquenessField :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | password_login_update_internal_password: Update internal authentik password when login succeeds with LDAP
    lDAPSourceRequestPasswordLoginUpdateInternalPassword :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | peer_certificate: Optionally verify the LDAP Server\'s Certificate against the CA Chain in this keypair.
    lDAPSourceRequestPeerCertificate :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | policy_engine_mode
    lDAPSourceRequestPolicyEngineMode :: (GHC.Maybe.Maybe PolicyEngineMode),
    -- | server_uri
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    lDAPSourceRequestServerUri :: Data.Text.Internal.Text,
    -- | slug: Internal source name, used in URLs.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    -- * Minimum length of 1
    -- * Must match pattern \'^[-a-zA-Z0-9_]+\$\'
    lDAPSourceRequestSlug :: Data.Text.Internal.Text,
    -- | sni
    lDAPSourceRequestSni :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | start_tls
    lDAPSourceRequestStartTls :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | sync_groups
    lDAPSourceRequestSyncGroups :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | sync_parent_group
    lDAPSourceRequestSyncParentGroup :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | sync_users
    lDAPSourceRequestSyncUsers :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | sync_users_password: When a user changes their password, sync it back to LDAP. This can only be enabled on a single LDAP source.
    lDAPSourceRequestSyncUsersPassword :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | user_matching_mode: How the source determines if an existing user should be authenticated or a new user enrolled.
    lDAPSourceRequestUserMatchingMode :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | user_object_filter: Consider Objects matching this filter to be Users.
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    lDAPSourceRequestUserObjectFilter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | user_path_template
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    lDAPSourceRequestUserPathTemplate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | user_property_mappings
    lDAPSourceRequestUserPropertyMappings :: (GHC.Maybe.Maybe [Data.Text.Internal.Text])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON LDAPSourceRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_group_dn" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestAdditionalGroupDn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_user_dn" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestAdditionalUserDn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestAuthenticationFlow obj) : ["base_dn" Data.Aeson.Types.ToJSON..= lDAPSourceRequestBaseDn obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bind_cn" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestBindCn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bind_password" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestBindPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_certificate" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestClientCertificate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enrollment_flow" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestEnrollmentFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_membership_field" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestGroupMembershipField obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_object_filter" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestGroupObjectFilter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_property_mappings" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestGroupPropertyMappings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lookup_groups_from_user" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestLookupGroupsFromUser obj) : ["name" Data.Aeson.Types.ToJSON..= lDAPSourceRequestName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object_uniqueness_field" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestObjectUniquenessField obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("password_login_update_internal_password" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestPasswordLoginUpdateInternalPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("peer_certificate" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestPeerCertificate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("policy_engine_mode" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestPolicyEngineMode obj) : ["server_uri" Data.Aeson.Types.ToJSON..= lDAPSourceRequestServerUri obj] : ["slug" Data.Aeson.Types.ToJSON..= lDAPSourceRequestSlug obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sni" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestSni obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("start_tls" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestStartTls obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_groups" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestSyncGroups obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_parent_group" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestSyncParentGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_users" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestSyncUsers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_users_password" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestSyncUsersPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_matching_mode" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestUserMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_object_filter" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestUserObjectFilter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_path_template" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestUserPathTemplate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_property_mappings" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestUserPropertyMappings obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_group_dn" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestAdditionalGroupDn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_user_dn" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestAdditionalUserDn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestAuthenticationFlow obj) : ["base_dn" Data.Aeson.Types.ToJSON..= lDAPSourceRequestBaseDn obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bind_cn" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestBindCn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bind_password" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestBindPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_certificate" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestClientCertificate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enrollment_flow" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestEnrollmentFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_membership_field" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestGroupMembershipField obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_object_filter" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestGroupObjectFilter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_property_mappings" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestGroupPropertyMappings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lookup_groups_from_user" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestLookupGroupsFromUser obj) : ["name" Data.Aeson.Types.ToJSON..= lDAPSourceRequestName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object_uniqueness_field" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestObjectUniquenessField obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("password_login_update_internal_password" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestPasswordLoginUpdateInternalPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("peer_certificate" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestPeerCertificate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("policy_engine_mode" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestPolicyEngineMode obj) : ["server_uri" Data.Aeson.Types.ToJSON..= lDAPSourceRequestServerUri obj] : ["slug" Data.Aeson.Types.ToJSON..= lDAPSourceRequestSlug obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sni" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestSni obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("start_tls" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestStartTls obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_groups" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestSyncGroups obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_parent_group" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestSyncParentGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_users" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestSyncUsers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sync_users_password" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestSyncUsersPassword obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_matching_mode" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestUserMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_object_filter" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestUserObjectFilter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_path_template" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestUserPathTemplate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_property_mappings" Data.Aeson.Types.ToJSON..=)) (lDAPSourceRequestUserPropertyMappings obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON LDAPSourceRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "LDAPSourceRequest" (\obj -> (((((((((((((((((((((((((((((GHC.Base.pure LDAPSourceRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "additional_group_dn")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "additional_user_dn")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authentication_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "base_dn")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bind_cn")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bind_password")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "client_certificate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enrollment_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "group_membership_field")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "group_object_filter")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "group_property_mappings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lookup_groups_from_user")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "object_uniqueness_field")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "password_login_update_internal_password")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "peer_certificate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "policy_engine_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "server_uri")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "slug")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sni")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "start_tls")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sync_groups")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sync_parent_group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sync_users")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sync_users_password")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_matching_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_object_filter")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_path_template")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_property_mappings"))

-- | Create a new 'LDAPSourceRequest' with all required fields.
mkLDAPSourceRequest ::
  -- | 'lDAPSourceRequestBaseDn'
  Data.Text.Internal.Text ->
  -- | 'lDAPSourceRequestName'
  Data.Text.Internal.Text ->
  -- | 'lDAPSourceRequestServerUri'
  Data.Text.Internal.Text ->
  -- | 'lDAPSourceRequestSlug'
  Data.Text.Internal.Text ->
  LDAPSourceRequest
mkLDAPSourceRequest lDAPSourceRequestBaseDn lDAPSourceRequestName lDAPSourceRequestServerUri lDAPSourceRequestSlug =
  LDAPSourceRequest
    { lDAPSourceRequestAdditionalGroupDn = GHC.Maybe.Nothing,
      lDAPSourceRequestAdditionalUserDn = GHC.Maybe.Nothing,
      lDAPSourceRequestAuthenticationFlow = GHC.Maybe.Nothing,
      lDAPSourceRequestBaseDn = lDAPSourceRequestBaseDn,
      lDAPSourceRequestBindCn = GHC.Maybe.Nothing,
      lDAPSourceRequestBindPassword = GHC.Maybe.Nothing,
      lDAPSourceRequestClientCertificate = GHC.Maybe.Nothing,
      lDAPSourceRequestEnabled = GHC.Maybe.Nothing,
      lDAPSourceRequestEnrollmentFlow = GHC.Maybe.Nothing,
      lDAPSourceRequestGroupMembershipField = GHC.Maybe.Nothing,
      lDAPSourceRequestGroupObjectFilter = GHC.Maybe.Nothing,
      lDAPSourceRequestGroupPropertyMappings = GHC.Maybe.Nothing,
      lDAPSourceRequestLookupGroupsFromUser = GHC.Maybe.Nothing,
      lDAPSourceRequestName = lDAPSourceRequestName,
      lDAPSourceRequestObjectUniquenessField = GHC.Maybe.Nothing,
      lDAPSourceRequestPasswordLoginUpdateInternalPassword = GHC.Maybe.Nothing,
      lDAPSourceRequestPeerCertificate = GHC.Maybe.Nothing,
      lDAPSourceRequestPolicyEngineMode = GHC.Maybe.Nothing,
      lDAPSourceRequestServerUri = lDAPSourceRequestServerUri,
      lDAPSourceRequestSlug = lDAPSourceRequestSlug,
      lDAPSourceRequestSni = GHC.Maybe.Nothing,
      lDAPSourceRequestStartTls = GHC.Maybe.Nothing,
      lDAPSourceRequestSyncGroups = GHC.Maybe.Nothing,
      lDAPSourceRequestSyncParentGroup = GHC.Maybe.Nothing,
      lDAPSourceRequestSyncUsers = GHC.Maybe.Nothing,
      lDAPSourceRequestSyncUsersPassword = GHC.Maybe.Nothing,
      lDAPSourceRequestUserMatchingMode = GHC.Maybe.Nothing,
      lDAPSourceRequestUserObjectFilter = GHC.Maybe.Nothing,
      lDAPSourceRequestUserPathTemplate = GHC.Maybe.Nothing,
      lDAPSourceRequestUserPropertyMappings = GHC.Maybe.Nothing
    }
