{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Stage
module AuthentikAPI.Types.Stage where

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

-- | Defines the object schema located at @components.schemas.Stage@ in the specification.
--
-- Stage Serializer
data Stage = Stage
  { -- | component: Get object type so that we know how to edit the object
    stageComponent :: Data.Text.Internal.Text,
    -- | flow_set
    stageFlowSet :: (GHC.Maybe.Maybe [FlowSet]),
    -- | meta_model_name: Return internal model name
    stageMetaModelName :: Data.Text.Internal.Text,
    -- | name
    stageName :: Data.Text.Internal.Text,
    -- | pk
    stagePk :: Data.Text.Internal.Text,
    -- | verbose_name: Return object\'s verbose_name
    stageVerboseName :: Data.Text.Internal.Text,
    -- | verbose_name_plural: Return object\'s plural verbose_name
    stageVerboseNamePlural :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Stage where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= stageComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (stageFlowSet obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= stageMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= stageName obj] : ["pk" Data.Aeson.Types.ToJSON..= stagePk obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= stageVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= stageVerboseNamePlural obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= stageComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (stageFlowSet obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= stageMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= stageName obj] : ["pk" Data.Aeson.Types.ToJSON..= stagePk obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= stageVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= stageVerboseNamePlural obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Stage where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Stage" (\obj -> ((((((GHC.Base.pure Stage GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "meta_model_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name_plural"))

-- | Create a new 'Stage' with all required fields.
mkStage ::
  -- | 'stageComponent'
  Data.Text.Internal.Text ->
  -- | 'stageMetaModelName'
  Data.Text.Internal.Text ->
  -- | 'stageName'
  Data.Text.Internal.Text ->
  -- | 'stagePk'
  Data.Text.Internal.Text ->
  -- | 'stageVerboseName'
  Data.Text.Internal.Text ->
  -- | 'stageVerboseNamePlural'
  Data.Text.Internal.Text ->
  Stage
mkStage stageComponent stageMetaModelName stageName stagePk stageVerboseName stageVerboseNamePlural =
  Stage
    { stageComponent = stageComponent,
      stageFlowSet = GHC.Maybe.Nothing,
      stageMetaModelName = stageMetaModelName,
      stageName = stageName,
      stagePk = stagePk,
      stageVerboseName = stageVerboseName,
      stageVerboseNamePlural = stageVerboseNamePlural
    }
