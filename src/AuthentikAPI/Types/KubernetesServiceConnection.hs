{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema KubernetesServiceConnection
module AuthentikAPI.Types.KubernetesServiceConnection where

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

-- | Defines the object schema located at @components.schemas.KubernetesServiceConnection@ in the specification.
--
-- KubernetesServiceConnection Serializer
data KubernetesServiceConnection = KubernetesServiceConnection
  { -- | component
    kubernetesServiceConnectionComponent :: Data.Text.Internal.Text,
    -- | kubeconfig: Paste your kubeconfig here. authentik will automatically use the currently selected context.
    kubernetesServiceConnectionKubeconfig :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | local: If enabled, use the local connection. Required Docker socket\/Kubernetes Integration
    kubernetesServiceConnectionLocal :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | meta_model_name: Return internal model name
    kubernetesServiceConnectionMetaModelName :: Data.Text.Internal.Text,
    -- | name
    kubernetesServiceConnectionName :: Data.Text.Internal.Text,
    -- | pk
    kubernetesServiceConnectionPk :: Data.Text.Internal.Text,
    -- | verbose_name: Return object\'s verbose_name
    kubernetesServiceConnectionVerboseName :: Data.Text.Internal.Text,
    -- | verbose_name_plural: Return object\'s plural verbose_name
    kubernetesServiceConnectionVerboseNamePlural :: Data.Text.Internal.Text,
    -- | verify_ssl: Verify SSL Certificates of the Kubernetes API endpoint
    kubernetesServiceConnectionVerifySsl :: (GHC.Maybe.Maybe GHC.Types.Bool)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON KubernetesServiceConnection where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= kubernetesServiceConnectionComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("kubeconfig" Data.Aeson.Types.ToJSON..=)) (kubernetesServiceConnectionKubeconfig obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("local" Data.Aeson.Types.ToJSON..=)) (kubernetesServiceConnectionLocal obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= kubernetesServiceConnectionMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= kubernetesServiceConnectionName obj] : ["pk" Data.Aeson.Types.ToJSON..= kubernetesServiceConnectionPk obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= kubernetesServiceConnectionVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= kubernetesServiceConnectionVerboseNamePlural obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verify_ssl" Data.Aeson.Types.ToJSON..=)) (kubernetesServiceConnectionVerifySsl obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= kubernetesServiceConnectionComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("kubeconfig" Data.Aeson.Types.ToJSON..=)) (kubernetesServiceConnectionKubeconfig obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("local" Data.Aeson.Types.ToJSON..=)) (kubernetesServiceConnectionLocal obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= kubernetesServiceConnectionMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= kubernetesServiceConnectionName obj] : ["pk" Data.Aeson.Types.ToJSON..= kubernetesServiceConnectionPk obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= kubernetesServiceConnectionVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= kubernetesServiceConnectionVerboseNamePlural obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verify_ssl" Data.Aeson.Types.ToJSON..=)) (kubernetesServiceConnectionVerifySsl obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON KubernetesServiceConnection where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "KubernetesServiceConnection" (\obj -> ((((((((GHC.Base.pure KubernetesServiceConnection GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "kubeconfig")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "local")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "meta_model_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name_plural")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verify_ssl"))

-- | Create a new 'KubernetesServiceConnection' with all required fields.
mkKubernetesServiceConnection ::
  -- | 'kubernetesServiceConnectionComponent'
  Data.Text.Internal.Text ->
  -- | 'kubernetesServiceConnectionMetaModelName'
  Data.Text.Internal.Text ->
  -- | 'kubernetesServiceConnectionName'
  Data.Text.Internal.Text ->
  -- | 'kubernetesServiceConnectionPk'
  Data.Text.Internal.Text ->
  -- | 'kubernetesServiceConnectionVerboseName'
  Data.Text.Internal.Text ->
  -- | 'kubernetesServiceConnectionVerboseNamePlural'
  Data.Text.Internal.Text ->
  KubernetesServiceConnection
mkKubernetesServiceConnection kubernetesServiceConnectionComponent kubernetesServiceConnectionMetaModelName kubernetesServiceConnectionName kubernetesServiceConnectionPk kubernetesServiceConnectionVerboseName kubernetesServiceConnectionVerboseNamePlural =
  KubernetesServiceConnection
    { kubernetesServiceConnectionComponent = kubernetesServiceConnectionComponent,
      kubernetesServiceConnectionKubeconfig = GHC.Maybe.Nothing,
      kubernetesServiceConnectionLocal = GHC.Maybe.Nothing,
      kubernetesServiceConnectionMetaModelName = kubernetesServiceConnectionMetaModelName,
      kubernetesServiceConnectionName = kubernetesServiceConnectionName,
      kubernetesServiceConnectionPk = kubernetesServiceConnectionPk,
      kubernetesServiceConnectionVerboseName = kubernetesServiceConnectionVerboseName,
      kubernetesServiceConnectionVerboseNamePlural = kubernetesServiceConnectionVerboseNamePlural,
      kubernetesServiceConnectionVerifySsl = GHC.Maybe.Nothing
    }
