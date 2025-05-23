{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Source
module AuthentikAPI.Types.Source where

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

-- | Defines the object schema located at @components.schemas.Source@ in the specification.
--
-- Source Serializer
data Source = Source
  { -- | authentication_flow: Flow to use when authenticating existing users.
    sourceAuthenticationFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | component: Get object component so that we know how to edit the object
    sourceComponent :: Data.Text.Internal.Text,
    -- | enabled
    sourceEnabled :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | enrollment_flow: Flow to use when enrolling new users.
    sourceEnrollmentFlow :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | group_property_mappings
    sourceGroupPropertyMappings :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | icon: Get the URL to the Icon. If the name is \/static or
    -- starts with http it is returned as-is
    sourceIcon :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | managed: Objects that are managed by authentik. These objects are created and updated automatically. This flag only indicates that an object can be overwritten by migrations. You can still modify the objects via the API, but expect changes to be overwritten in a later update.
    sourceManaged :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | meta_model_name: Return internal model name
    sourceMetaModelName :: Data.Text.Internal.Text,
    -- | name: Source\'s display Name.
    sourceName :: Data.Text.Internal.Text,
    -- | pk
    sourcePk :: Data.Text.Internal.Text,
    -- | policy_engine_mode
    sourcePolicyEngineMode :: (GHC.Maybe.Maybe PolicyEngineMode),
    -- | slug: Internal source name, used in URLs.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    -- * Must match pattern \'^[-a-zA-Z0-9_]+\$\'
    sourceSlug :: Data.Text.Internal.Text,
    -- | user_matching_mode: How the source determines if an existing user should be authenticated or a new user enrolled.
    sourceUserMatchingMode :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | user_path_template
    sourceUserPathTemplate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | user_property_mappings
    sourceUserPropertyMappings :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | verbose_name: Return object\'s verbose_name
    sourceVerboseName :: Data.Text.Internal.Text,
    -- | verbose_name_plural: Return object\'s plural verbose_name
    sourceVerboseNamePlural :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Source where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (sourceAuthenticationFlow obj) : ["component" Data.Aeson.Types.ToJSON..= sourceComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (sourceEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enrollment_flow" Data.Aeson.Types.ToJSON..=)) (sourceEnrollmentFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_property_mappings" Data.Aeson.Types.ToJSON..=)) (sourceGroupPropertyMappings obj) : ["icon" Data.Aeson.Types.ToJSON..= sourceIcon obj] : ["managed" Data.Aeson.Types.ToJSON..= sourceManaged obj] : ["meta_model_name" Data.Aeson.Types.ToJSON..= sourceMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= sourceName obj] : ["pk" Data.Aeson.Types.ToJSON..= sourcePk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("policy_engine_mode" Data.Aeson.Types.ToJSON..=)) (sourcePolicyEngineMode obj) : ["slug" Data.Aeson.Types.ToJSON..= sourceSlug obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_matching_mode" Data.Aeson.Types.ToJSON..=)) (sourceUserMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_path_template" Data.Aeson.Types.ToJSON..=)) (sourceUserPathTemplate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_property_mappings" Data.Aeson.Types.ToJSON..=)) (sourceUserPropertyMappings obj) : ["verbose_name" Data.Aeson.Types.ToJSON..= sourceVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= sourceVerboseNamePlural obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (sourceAuthenticationFlow obj) : ["component" Data.Aeson.Types.ToJSON..= sourceComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (sourceEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enrollment_flow" Data.Aeson.Types.ToJSON..=)) (sourceEnrollmentFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group_property_mappings" Data.Aeson.Types.ToJSON..=)) (sourceGroupPropertyMappings obj) : ["icon" Data.Aeson.Types.ToJSON..= sourceIcon obj] : ["managed" Data.Aeson.Types.ToJSON..= sourceManaged obj] : ["meta_model_name" Data.Aeson.Types.ToJSON..= sourceMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= sourceName obj] : ["pk" Data.Aeson.Types.ToJSON..= sourcePk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("policy_engine_mode" Data.Aeson.Types.ToJSON..=)) (sourcePolicyEngineMode obj) : ["slug" Data.Aeson.Types.ToJSON..= sourceSlug obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_matching_mode" Data.Aeson.Types.ToJSON..=)) (sourceUserMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_path_template" Data.Aeson.Types.ToJSON..=)) (sourceUserPathTemplate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_property_mappings" Data.Aeson.Types.ToJSON..=)) (sourceUserPropertyMappings obj) : ["verbose_name" Data.Aeson.Types.ToJSON..= sourceVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= sourceVerboseNamePlural obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Source where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Source" (\obj -> ((((((((((((((((GHC.Base.pure Source GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authentication_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enrollment_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "group_property_mappings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "icon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "managed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "meta_model_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "policy_engine_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "slug")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_matching_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_path_template")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_property_mappings")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name_plural"))

-- | Create a new 'Source' with all required fields.
mkSource ::
  -- | 'sourceComponent'
  Data.Text.Internal.Text ->
  -- | 'sourceIcon'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'sourceManaged'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'sourceMetaModelName'
  Data.Text.Internal.Text ->
  -- | 'sourceName'
  Data.Text.Internal.Text ->
  -- | 'sourcePk'
  Data.Text.Internal.Text ->
  -- | 'sourceSlug'
  Data.Text.Internal.Text ->
  -- | 'sourceVerboseName'
  Data.Text.Internal.Text ->
  -- | 'sourceVerboseNamePlural'
  Data.Text.Internal.Text ->
  Source
mkSource sourceComponent sourceIcon sourceManaged sourceMetaModelName sourceName sourcePk sourceSlug sourceVerboseName sourceVerboseNamePlural =
  Source
    { sourceAuthenticationFlow = GHC.Maybe.Nothing,
      sourceComponent = sourceComponent,
      sourceEnabled = GHC.Maybe.Nothing,
      sourceEnrollmentFlow = GHC.Maybe.Nothing,
      sourceGroupPropertyMappings = GHC.Maybe.Nothing,
      sourceIcon = sourceIcon,
      sourceManaged = sourceManaged,
      sourceMetaModelName = sourceMetaModelName,
      sourceName = sourceName,
      sourcePk = sourcePk,
      sourcePolicyEngineMode = GHC.Maybe.Nothing,
      sourceSlug = sourceSlug,
      sourceUserMatchingMode = GHC.Maybe.Nothing,
      sourceUserPathTemplate = GHC.Maybe.Nothing,
      sourceUserPropertyMappings = GHC.Maybe.Nothing,
      sourceVerboseName = sourceVerboseName,
      sourceVerboseNamePlural = sourceVerboseNamePlural
    }
