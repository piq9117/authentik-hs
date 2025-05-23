{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema DenyStage
module AuthentikAPI.Types.DenyStage where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.FlowSet
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

-- | Defines the object schema located at @components.schemas.DenyStage@ in the specification.
--
-- DenyStage Serializer
data DenyStage = DenyStage
  { -- | component: Get object type so that we know how to edit the object
    denyStageComponent :: Data.Text.Internal.Text,
    -- | deny_message
    denyStageDenyMessage :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | flow_set
    denyStageFlowSet :: (GHC.Maybe.Maybe [FlowSet]),
    -- | meta_model_name: Return internal model name
    denyStageMetaModelName :: Data.Text.Internal.Text,
    -- | name
    denyStageName :: Data.Text.Internal.Text,
    -- | pk
    denyStagePk :: Data.Text.Internal.Text,
    -- | verbose_name: Return object\'s verbose_name
    denyStageVerboseName :: Data.Text.Internal.Text,
    -- | verbose_name_plural: Return object\'s plural verbose_name
    denyStageVerboseNamePlural :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DenyStage where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= denyStageComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deny_message" Data.Aeson.Types.ToJSON..=)) (denyStageDenyMessage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (denyStageFlowSet obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= denyStageMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= denyStageName obj] : ["pk" Data.Aeson.Types.ToJSON..= denyStagePk obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= denyStageVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= denyStageVerboseNamePlural obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= denyStageComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deny_message" Data.Aeson.Types.ToJSON..=)) (denyStageDenyMessage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (denyStageFlowSet obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= denyStageMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= denyStageName obj] : ["pk" Data.Aeson.Types.ToJSON..= denyStagePk obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= denyStageVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= denyStageVerboseNamePlural obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DenyStage where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DenyStage" (\obj -> (((((((GHC.Base.pure DenyStage GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "deny_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "meta_model_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name_plural"))

-- | Create a new 'DenyStage' with all required fields.
mkDenyStage ::
  -- | 'denyStageComponent'
  Data.Text.Internal.Text ->
  -- | 'denyStageMetaModelName'
  Data.Text.Internal.Text ->
  -- | 'denyStageName'
  Data.Text.Internal.Text ->
  -- | 'denyStagePk'
  Data.Text.Internal.Text ->
  -- | 'denyStageVerboseName'
  Data.Text.Internal.Text ->
  -- | 'denyStageVerboseNamePlural'
  Data.Text.Internal.Text ->
  DenyStage
mkDenyStage denyStageComponent denyStageMetaModelName denyStageName denyStagePk denyStageVerboseName denyStageVerboseNamePlural =
  DenyStage
    { denyStageComponent = denyStageComponent,
      denyStageDenyMessage = GHC.Maybe.Nothing,
      denyStageFlowSet = GHC.Maybe.Nothing,
      denyStageMetaModelName = denyStageMetaModelName,
      denyStageName = denyStageName,
      denyStagePk = denyStagePk,
      denyStageVerboseName = denyStageVerboseName,
      denyStageVerboseNamePlural = denyStageVerboseNamePlural
    }
