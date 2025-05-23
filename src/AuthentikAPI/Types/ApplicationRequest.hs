{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ApplicationRequest
module AuthentikAPI.Types.ApplicationRequest where

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

-- | Defines the object schema located at @components.schemas.ApplicationRequest@ in the specification.
--
-- Application Serializer
data ApplicationRequest = ApplicationRequest
  { -- | backchannel_providers
    applicationRequestBackchannelProviders :: (GHC.Maybe.Maybe [GHC.Types.Int]),
    -- | group
    applicationRequestGroup :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | meta_description
    applicationRequestMetaDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | meta_launch_url
    applicationRequestMetaLaunchUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | meta_publisher
    applicationRequestMetaPublisher :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | name: Application\'s display Name.
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    applicationRequestName :: Data.Text.Internal.Text,
    -- | open_in_new_tab: Open launch URL in a new browser tab or window.
    applicationRequestOpenInNewTab :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | policy_engine_mode
    applicationRequestPolicyEngineMode :: (GHC.Maybe.Maybe PolicyEngineMode),
    -- | provider
    applicationRequestProvider :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable GHC.Types.Int)),
    -- | slug: Internal application name, used in URLs.
    --
    -- Constraints:
    --
    -- * Maximum length of 50
    -- * Minimum length of 1
    -- * Must match pattern \'^[-a-zA-Z0-9_]+\$\'
    applicationRequestSlug :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ApplicationRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("backchannel_providers" Data.Aeson.Types.ToJSON..=)) (applicationRequestBackchannelProviders obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group" Data.Aeson.Types.ToJSON..=)) (applicationRequestGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("meta_description" Data.Aeson.Types.ToJSON..=)) (applicationRequestMetaDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("meta_launch_url" Data.Aeson.Types.ToJSON..=)) (applicationRequestMetaLaunchUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("meta_publisher" Data.Aeson.Types.ToJSON..=)) (applicationRequestMetaPublisher obj) : ["name" Data.Aeson.Types.ToJSON..= applicationRequestName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("open_in_new_tab" Data.Aeson.Types.ToJSON..=)) (applicationRequestOpenInNewTab obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("policy_engine_mode" Data.Aeson.Types.ToJSON..=)) (applicationRequestPolicyEngineMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("provider" Data.Aeson.Types.ToJSON..=)) (applicationRequestProvider obj) : ["slug" Data.Aeson.Types.ToJSON..= applicationRequestSlug obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("backchannel_providers" Data.Aeson.Types.ToJSON..=)) (applicationRequestBackchannelProviders obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group" Data.Aeson.Types.ToJSON..=)) (applicationRequestGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("meta_description" Data.Aeson.Types.ToJSON..=)) (applicationRequestMetaDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("meta_launch_url" Data.Aeson.Types.ToJSON..=)) (applicationRequestMetaLaunchUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("meta_publisher" Data.Aeson.Types.ToJSON..=)) (applicationRequestMetaPublisher obj) : ["name" Data.Aeson.Types.ToJSON..= applicationRequestName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("open_in_new_tab" Data.Aeson.Types.ToJSON..=)) (applicationRequestOpenInNewTab obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("policy_engine_mode" Data.Aeson.Types.ToJSON..=)) (applicationRequestPolicyEngineMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("provider" Data.Aeson.Types.ToJSON..=)) (applicationRequestProvider obj) : ["slug" Data.Aeson.Types.ToJSON..= applicationRequestSlug obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON ApplicationRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ApplicationRequest" (\obj -> (((((((((GHC.Base.pure ApplicationRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "backchannel_providers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "meta_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "meta_launch_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "meta_publisher")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "open_in_new_tab")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "policy_engine_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "provider")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "slug"))

-- | Create a new 'ApplicationRequest' with all required fields.
mkApplicationRequest ::
  -- | 'applicationRequestName'
  Data.Text.Internal.Text ->
  -- | 'applicationRequestSlug'
  Data.Text.Internal.Text ->
  ApplicationRequest
mkApplicationRequest applicationRequestName applicationRequestSlug =
  ApplicationRequest
    { applicationRequestBackchannelProviders = GHC.Maybe.Nothing,
      applicationRequestGroup = GHC.Maybe.Nothing,
      applicationRequestMetaDescription = GHC.Maybe.Nothing,
      applicationRequestMetaLaunchUrl = GHC.Maybe.Nothing,
      applicationRequestMetaPublisher = GHC.Maybe.Nothing,
      applicationRequestName = applicationRequestName,
      applicationRequestOpenInNewTab = GHC.Maybe.Nothing,
      applicationRequestPolicyEngineMode = GHC.Maybe.Nothing,
      applicationRequestProvider = GHC.Maybe.Nothing,
      applicationRequestSlug = applicationRequestSlug
    }
