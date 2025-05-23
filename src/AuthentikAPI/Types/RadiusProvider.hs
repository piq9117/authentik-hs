{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema RadiusProvider
module AuthentikAPI.Types.RadiusProvider where

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

-- | Defines the object schema located at @components.schemas.RadiusProvider@ in the specification.
--
-- RadiusProvider Serializer
data RadiusProvider = RadiusProvider
  { -- | assigned_application_name: Application\'s display Name.
    radiusProviderAssignedApplicationName :: Data.Text.Internal.Text,
    -- | assigned_application_slug: Internal application name, used in URLs.
    radiusProviderAssignedApplicationSlug :: Data.Text.Internal.Text,
    -- | assigned_backchannel_application_name: Application\'s display Name.
    radiusProviderAssignedBackchannelApplicationName :: Data.Text.Internal.Text,
    -- | assigned_backchannel_application_slug: Internal application name, used in URLs.
    radiusProviderAssignedBackchannelApplicationSlug :: Data.Text.Internal.Text,
    -- | authentication_flow: Flow used for authentication when the associated application is accessed by an un-authenticated user.
    radiusProviderAuthenticationFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | authorization_flow: Flow used when authorizing this provider.
    radiusProviderAuthorizationFlow :: Data.Text.Internal.Text,
    -- | client_networks: List of CIDRs (comma-separated) that clients can connect from. A more specific CIDR will match before a looser one. Clients connecting from a non-specified CIDR will be dropped.
    radiusProviderClientNetworks :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | component: Get object component so that we know how to edit the object
    radiusProviderComponent :: Data.Text.Internal.Text,
    -- | invalidation_flow: Flow used ending the session from a provider.
    radiusProviderInvalidationFlow :: Data.Text.Internal.Text,
    -- | meta_model_name: Return internal model name
    radiusProviderMetaModelName :: Data.Text.Internal.Text,
    -- | mfa_support: When enabled, code-based multi-factor authentication can be used by appending a semicolon and the TOTP code to the password. This should only be enabled if all users that will bind to this provider have a TOTP device configured, as otherwise a password may incorrectly be rejected if it contains a semicolon.
    radiusProviderMfaSupport :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | name
    radiusProviderName :: Data.Text.Internal.Text,
    -- | outpost_set
    radiusProviderOutpostSet :: [Data.Text.Internal.Text],
    -- | pk
    radiusProviderPk :: GHC.Types.Int,
    -- | property_mappings
    radiusProviderPropertyMappings :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | shared_secret: Shared secret between clients and server to hash packets.
    radiusProviderSharedSecret :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | verbose_name: Return object\'s verbose_name
    radiusProviderVerboseName :: Data.Text.Internal.Text,
    -- | verbose_name_plural: Return object\'s plural verbose_name
    radiusProviderVerboseNamePlural :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON RadiusProvider where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["assigned_application_name" Data.Aeson.Types.ToJSON..= radiusProviderAssignedApplicationName obj] : ["assigned_application_slug" Data.Aeson.Types.ToJSON..= radiusProviderAssignedApplicationSlug obj] : ["assigned_backchannel_application_name" Data.Aeson.Types.ToJSON..= radiusProviderAssignedBackchannelApplicationName obj] : ["assigned_backchannel_application_slug" Data.Aeson.Types.ToJSON..= radiusProviderAssignedBackchannelApplicationSlug obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (radiusProviderAuthenticationFlow obj) : ["authorization_flow" Data.Aeson.Types.ToJSON..= radiusProviderAuthorizationFlow obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_networks" Data.Aeson.Types.ToJSON..=)) (radiusProviderClientNetworks obj) : ["component" Data.Aeson.Types.ToJSON..= radiusProviderComponent obj] : ["invalidation_flow" Data.Aeson.Types.ToJSON..= radiusProviderInvalidationFlow obj] : ["meta_model_name" Data.Aeson.Types.ToJSON..= radiusProviderMetaModelName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mfa_support" Data.Aeson.Types.ToJSON..=)) (radiusProviderMfaSupport obj) : ["name" Data.Aeson.Types.ToJSON..= radiusProviderName obj] : ["outpost_set" Data.Aeson.Types.ToJSON..= radiusProviderOutpostSet obj] : ["pk" Data.Aeson.Types.ToJSON..= radiusProviderPk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("property_mappings" Data.Aeson.Types.ToJSON..=)) (radiusProviderPropertyMappings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shared_secret" Data.Aeson.Types.ToJSON..=)) (radiusProviderSharedSecret obj) : ["verbose_name" Data.Aeson.Types.ToJSON..= radiusProviderVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= radiusProviderVerboseNamePlural obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["assigned_application_name" Data.Aeson.Types.ToJSON..= radiusProviderAssignedApplicationName obj] : ["assigned_application_slug" Data.Aeson.Types.ToJSON..= radiusProviderAssignedApplicationSlug obj] : ["assigned_backchannel_application_name" Data.Aeson.Types.ToJSON..= radiusProviderAssignedBackchannelApplicationName obj] : ["assigned_backchannel_application_slug" Data.Aeson.Types.ToJSON..= radiusProviderAssignedBackchannelApplicationSlug obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (radiusProviderAuthenticationFlow obj) : ["authorization_flow" Data.Aeson.Types.ToJSON..= radiusProviderAuthorizationFlow obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_networks" Data.Aeson.Types.ToJSON..=)) (radiusProviderClientNetworks obj) : ["component" Data.Aeson.Types.ToJSON..= radiusProviderComponent obj] : ["invalidation_flow" Data.Aeson.Types.ToJSON..= radiusProviderInvalidationFlow obj] : ["meta_model_name" Data.Aeson.Types.ToJSON..= radiusProviderMetaModelName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mfa_support" Data.Aeson.Types.ToJSON..=)) (radiusProviderMfaSupport obj) : ["name" Data.Aeson.Types.ToJSON..= radiusProviderName obj] : ["outpost_set" Data.Aeson.Types.ToJSON..= radiusProviderOutpostSet obj] : ["pk" Data.Aeson.Types.ToJSON..= radiusProviderPk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("property_mappings" Data.Aeson.Types.ToJSON..=)) (radiusProviderPropertyMappings obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shared_secret" Data.Aeson.Types.ToJSON..=)) (radiusProviderSharedSecret obj) : ["verbose_name" Data.Aeson.Types.ToJSON..= radiusProviderVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= radiusProviderVerboseNamePlural obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON RadiusProvider where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "RadiusProvider" (\obj -> (((((((((((((((((GHC.Base.pure RadiusProvider GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "assigned_application_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "assigned_application_slug")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "assigned_backchannel_application_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "assigned_backchannel_application_slug")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authentication_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "authorization_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "client_networks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "invalidation_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "meta_model_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mfa_support")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "outpost_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "property_mappings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shared_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name_plural"))

-- | Create a new 'RadiusProvider' with all required fields.
mkRadiusProvider ::
  -- | 'radiusProviderAssignedApplicationName'
  Data.Text.Internal.Text ->
  -- | 'radiusProviderAssignedApplicationSlug'
  Data.Text.Internal.Text ->
  -- | 'radiusProviderAssignedBackchannelApplicationName'
  Data.Text.Internal.Text ->
  -- | 'radiusProviderAssignedBackchannelApplicationSlug'
  Data.Text.Internal.Text ->
  -- | 'radiusProviderAuthorizationFlow'
  Data.Text.Internal.Text ->
  -- | 'radiusProviderComponent'
  Data.Text.Internal.Text ->
  -- | 'radiusProviderInvalidationFlow'
  Data.Text.Internal.Text ->
  -- | 'radiusProviderMetaModelName'
  Data.Text.Internal.Text ->
  -- | 'radiusProviderName'
  Data.Text.Internal.Text ->
  -- | 'radiusProviderOutpostSet'
  [Data.Text.Internal.Text] ->
  -- | 'radiusProviderPk'
  GHC.Types.Int ->
  -- | 'radiusProviderVerboseName'
  Data.Text.Internal.Text ->
  -- | 'radiusProviderVerboseNamePlural'
  Data.Text.Internal.Text ->
  RadiusProvider
mkRadiusProvider radiusProviderAssignedApplicationName radiusProviderAssignedApplicationSlug radiusProviderAssignedBackchannelApplicationName radiusProviderAssignedBackchannelApplicationSlug radiusProviderAuthorizationFlow radiusProviderComponent radiusProviderInvalidationFlow radiusProviderMetaModelName radiusProviderName radiusProviderOutpostSet radiusProviderPk radiusProviderVerboseName radiusProviderVerboseNamePlural =
  RadiusProvider
    { radiusProviderAssignedApplicationName = radiusProviderAssignedApplicationName,
      radiusProviderAssignedApplicationSlug = radiusProviderAssignedApplicationSlug,
      radiusProviderAssignedBackchannelApplicationName = radiusProviderAssignedBackchannelApplicationName,
      radiusProviderAssignedBackchannelApplicationSlug = radiusProviderAssignedBackchannelApplicationSlug,
      radiusProviderAuthenticationFlow = GHC.Maybe.Nothing,
      radiusProviderAuthorizationFlow = radiusProviderAuthorizationFlow,
      radiusProviderClientNetworks = GHC.Maybe.Nothing,
      radiusProviderComponent = radiusProviderComponent,
      radiusProviderInvalidationFlow = radiusProviderInvalidationFlow,
      radiusProviderMetaModelName = radiusProviderMetaModelName,
      radiusProviderMfaSupport = GHC.Maybe.Nothing,
      radiusProviderName = radiusProviderName,
      radiusProviderOutpostSet = radiusProviderOutpostSet,
      radiusProviderPk = radiusProviderPk,
      radiusProviderPropertyMappings = GHC.Maybe.Nothing,
      radiusProviderSharedSecret = GHC.Maybe.Nothing,
      radiusProviderVerboseName = radiusProviderVerboseName,
      radiusProviderVerboseNamePlural = radiusProviderVerboseNamePlural
    }
