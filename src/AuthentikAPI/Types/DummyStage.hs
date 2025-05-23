{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema DummyStage
module AuthentikAPI.Types.DummyStage where

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

-- | Defines the object schema located at @components.schemas.DummyStage@ in the specification.
--
-- DummyStage Serializer
data DummyStage = DummyStage
  { -- | component: Get object type so that we know how to edit the object
    dummyStageComponent :: Data.Text.Internal.Text,
    -- | flow_set
    dummyStageFlowSet :: (GHC.Maybe.Maybe [FlowSet]),
    -- | meta_model_name: Return internal model name
    dummyStageMetaModelName :: Data.Text.Internal.Text,
    -- | name
    dummyStageName :: Data.Text.Internal.Text,
    -- | pk
    dummyStagePk :: Data.Text.Internal.Text,
    -- | throw_error
    dummyStageThrowError :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | verbose_name: Return object\'s verbose_name
    dummyStageVerboseName :: Data.Text.Internal.Text,
    -- | verbose_name_plural: Return object\'s plural verbose_name
    dummyStageVerboseNamePlural :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DummyStage where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= dummyStageComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (dummyStageFlowSet obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= dummyStageMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= dummyStageName obj] : ["pk" Data.Aeson.Types.ToJSON..= dummyStagePk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("throw_error" Data.Aeson.Types.ToJSON..=)) (dummyStageThrowError obj) : ["verbose_name" Data.Aeson.Types.ToJSON..= dummyStageVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= dummyStageVerboseNamePlural obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= dummyStageComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (dummyStageFlowSet obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= dummyStageMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= dummyStageName obj] : ["pk" Data.Aeson.Types.ToJSON..= dummyStagePk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("throw_error" Data.Aeson.Types.ToJSON..=)) (dummyStageThrowError obj) : ["verbose_name" Data.Aeson.Types.ToJSON..= dummyStageVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= dummyStageVerboseNamePlural obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DummyStage where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DummyStage" (\obj -> (((((((GHC.Base.pure DummyStage GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "meta_model_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "throw_error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name_plural"))

-- | Create a new 'DummyStage' with all required fields.
mkDummyStage ::
  -- | 'dummyStageComponent'
  Data.Text.Internal.Text ->
  -- | 'dummyStageMetaModelName'
  Data.Text.Internal.Text ->
  -- | 'dummyStageName'
  Data.Text.Internal.Text ->
  -- | 'dummyStagePk'
  Data.Text.Internal.Text ->
  -- | 'dummyStageVerboseName'
  Data.Text.Internal.Text ->
  -- | 'dummyStageVerboseNamePlural'
  Data.Text.Internal.Text ->
  DummyStage
mkDummyStage dummyStageComponent dummyStageMetaModelName dummyStageName dummyStagePk dummyStageVerboseName dummyStageVerboseNamePlural =
  DummyStage
    { dummyStageComponent = dummyStageComponent,
      dummyStageFlowSet = GHC.Maybe.Nothing,
      dummyStageMetaModelName = dummyStageMetaModelName,
      dummyStageName = dummyStageName,
      dummyStagePk = dummyStagePk,
      dummyStageThrowError = GHC.Maybe.Nothing,
      dummyStageVerboseName = dummyStageVerboseName,
      dummyStageVerboseNamePlural = dummyStageVerboseNamePlural
    }
