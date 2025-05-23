{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SCIMMapping
module AuthentikAPI.Types.SCIMMapping where

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

-- | Defines the object schema located at @components.schemas.SCIMMapping@ in the specification.
--
-- SCIMMapping Serializer
data SCIMMapping = SCIMMapping
  { -- | component: Get object\'s component so that we know how to edit the object
    sCIMMappingComponent :: Data.Text.Internal.Text,
    -- | expression
    sCIMMappingExpression :: Data.Text.Internal.Text,
    -- | managed: Objects that are managed by authentik. These objects are created and updated automatically. This flag only indicates that an object can be overwritten by migrations. You can still modify the objects via the API, but expect changes to be overwritten in a later update.
    sCIMMappingManaged :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | meta_model_name: Return internal model name
    sCIMMappingMetaModelName :: Data.Text.Internal.Text,
    -- | name
    sCIMMappingName :: Data.Text.Internal.Text,
    -- | pk
    sCIMMappingPk :: Data.Text.Internal.Text,
    -- | verbose_name: Return object\'s verbose_name
    sCIMMappingVerboseName :: Data.Text.Internal.Text,
    -- | verbose_name_plural: Return object\'s plural verbose_name
    sCIMMappingVerboseNamePlural :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SCIMMapping where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= sCIMMappingComponent obj] : ["expression" Data.Aeson.Types.ToJSON..= sCIMMappingExpression obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("managed" Data.Aeson.Types.ToJSON..=)) (sCIMMappingManaged obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= sCIMMappingMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= sCIMMappingName obj] : ["pk" Data.Aeson.Types.ToJSON..= sCIMMappingPk obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= sCIMMappingVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= sCIMMappingVerboseNamePlural obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= sCIMMappingComponent obj] : ["expression" Data.Aeson.Types.ToJSON..= sCIMMappingExpression obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("managed" Data.Aeson.Types.ToJSON..=)) (sCIMMappingManaged obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= sCIMMappingMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= sCIMMappingName obj] : ["pk" Data.Aeson.Types.ToJSON..= sCIMMappingPk obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= sCIMMappingVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= sCIMMappingVerboseNamePlural obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SCIMMapping where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SCIMMapping" (\obj -> (((((((GHC.Base.pure SCIMMapping GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expression")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "managed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "meta_model_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name_plural"))

-- | Create a new 'SCIMMapping' with all required fields.
mkSCIMMapping ::
  -- | 'sCIMMappingComponent'
  Data.Text.Internal.Text ->
  -- | 'sCIMMappingExpression'
  Data.Text.Internal.Text ->
  -- | 'sCIMMappingMetaModelName'
  Data.Text.Internal.Text ->
  -- | 'sCIMMappingName'
  Data.Text.Internal.Text ->
  -- | 'sCIMMappingPk'
  Data.Text.Internal.Text ->
  -- | 'sCIMMappingVerboseName'
  Data.Text.Internal.Text ->
  -- | 'sCIMMappingVerboseNamePlural'
  Data.Text.Internal.Text ->
  SCIMMapping
mkSCIMMapping sCIMMappingComponent sCIMMappingExpression sCIMMappingMetaModelName sCIMMappingName sCIMMappingPk sCIMMappingVerboseName sCIMMappingVerboseNamePlural =
  SCIMMapping
    { sCIMMappingComponent = sCIMMappingComponent,
      sCIMMappingExpression = sCIMMappingExpression,
      sCIMMappingManaged = GHC.Maybe.Nothing,
      sCIMMappingMetaModelName = sCIMMappingMetaModelName,
      sCIMMappingName = sCIMMappingName,
      sCIMMappingPk = sCIMMappingPk,
      sCIMMappingVerboseName = sCIMMappingVerboseName,
      sCIMMappingVerboseNamePlural = sCIMMappingVerboseNamePlural
    }
