{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PromptRequest
module AuthentikAPI.Types.PromptRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.PromptTypeEnum
import {-# SOURCE #-} AuthentikAPI.Types.StageRequest
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

-- | Defines the object schema located at @components.schemas.PromptRequest@ in the specification.
--
-- Prompt Serializer
data PromptRequest = PromptRequest
  { -- | field_key: Name of the form field, also used to store the value
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    promptRequestFieldKey :: Data.Text.Internal.Text,
    -- | initial_value: Optionally pre-fill the input with an initial value. When creating a fixed choice field, enable interpreting as expression and return a list to return multiple default choices.
    promptRequestInitialValue :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | initial_value_expression
    promptRequestInitialValueExpression :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | label
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    promptRequestLabel :: Data.Text.Internal.Text,
    -- | name
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    promptRequestName :: Data.Text.Internal.Text,
    -- | order
    --
    -- Constraints:
    --
    -- * Maxium  of 2.1474836e9
    -- * Minimum  of -2.1474836e9
    promptRequestOrder :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | placeholder: Optionally provide a short hint that describes the expected input value. When creating a fixed choice field, enable interpreting as expression and return a list to return multiple choices.
    promptRequestPlaceholder :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | placeholder_expression
    promptRequestPlaceholderExpression :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | promptstage_set
    promptRequestPromptstageSet :: (GHC.Maybe.Maybe [StageRequest]),
    -- | required
    promptRequestRequired :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | sub_text
    promptRequestSubText :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | type
    promptRequestType :: PromptTypeEnum
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PromptRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["field_key" Data.Aeson.Types.ToJSON..= promptRequestFieldKey obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("initial_value" Data.Aeson.Types.ToJSON..=)) (promptRequestInitialValue obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("initial_value_expression" Data.Aeson.Types.ToJSON..=)) (promptRequestInitialValueExpression obj) : ["label" Data.Aeson.Types.ToJSON..= promptRequestLabel obj] : ["name" Data.Aeson.Types.ToJSON..= promptRequestName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order" Data.Aeson.Types.ToJSON..=)) (promptRequestOrder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("placeholder" Data.Aeson.Types.ToJSON..=)) (promptRequestPlaceholder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("placeholder_expression" Data.Aeson.Types.ToJSON..=)) (promptRequestPlaceholderExpression obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("promptstage_set" Data.Aeson.Types.ToJSON..=)) (promptRequestPromptstageSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("required" Data.Aeson.Types.ToJSON..=)) (promptRequestRequired obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sub_text" Data.Aeson.Types.ToJSON..=)) (promptRequestSubText obj) : ["type" Data.Aeson.Types.ToJSON..= promptRequestType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["field_key" Data.Aeson.Types.ToJSON..= promptRequestFieldKey obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("initial_value" Data.Aeson.Types.ToJSON..=)) (promptRequestInitialValue obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("initial_value_expression" Data.Aeson.Types.ToJSON..=)) (promptRequestInitialValueExpression obj) : ["label" Data.Aeson.Types.ToJSON..= promptRequestLabel obj] : ["name" Data.Aeson.Types.ToJSON..= promptRequestName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order" Data.Aeson.Types.ToJSON..=)) (promptRequestOrder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("placeholder" Data.Aeson.Types.ToJSON..=)) (promptRequestPlaceholder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("placeholder_expression" Data.Aeson.Types.ToJSON..=)) (promptRequestPlaceholderExpression obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("promptstage_set" Data.Aeson.Types.ToJSON..=)) (promptRequestPromptstageSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("required" Data.Aeson.Types.ToJSON..=)) (promptRequestRequired obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sub_text" Data.Aeson.Types.ToJSON..=)) (promptRequestSubText obj) : ["type" Data.Aeson.Types.ToJSON..= promptRequestType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PromptRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PromptRequest" (\obj -> (((((((((((GHC.Base.pure PromptRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "field_key")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "initial_value")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "initial_value_expression")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "placeholder")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "placeholder_expression")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "promptstage_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "required")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sub_text")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'PromptRequest' with all required fields.
mkPromptRequest ::
  -- | 'promptRequestFieldKey'
  Data.Text.Internal.Text ->
  -- | 'promptRequestLabel'
  Data.Text.Internal.Text ->
  -- | 'promptRequestName'
  Data.Text.Internal.Text ->
  -- | 'promptRequestType'
  PromptTypeEnum ->
  PromptRequest
mkPromptRequest promptRequestFieldKey promptRequestLabel promptRequestName promptRequestType =
  PromptRequest
    { promptRequestFieldKey = promptRequestFieldKey,
      promptRequestInitialValue = GHC.Maybe.Nothing,
      promptRequestInitialValueExpression = GHC.Maybe.Nothing,
      promptRequestLabel = promptRequestLabel,
      promptRequestName = promptRequestName,
      promptRequestOrder = GHC.Maybe.Nothing,
      promptRequestPlaceholder = GHC.Maybe.Nothing,
      promptRequestPlaceholderExpression = GHC.Maybe.Nothing,
      promptRequestPromptstageSet = GHC.Maybe.Nothing,
      promptRequestRequired = GHC.Maybe.Nothing,
      promptRequestSubText = GHC.Maybe.Nothing,
      promptRequestType = promptRequestType
    }
