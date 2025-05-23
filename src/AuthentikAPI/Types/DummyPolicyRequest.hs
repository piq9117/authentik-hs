{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema DummyPolicyRequest
module AuthentikAPI.Types.DummyPolicyRequest where

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

-- | Defines the object schema located at @components.schemas.DummyPolicyRequest@ in the specification.
--
-- Dummy Policy Serializer
data DummyPolicyRequest = DummyPolicyRequest
  { -- | execution_logging: When this option is enabled, all executions of this policy will be logged. By default, only execution errors are logged.
    dummyPolicyRequestExecutionLogging :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | name
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    dummyPolicyRequestName :: Data.Text.Internal.Text,
    -- | result
    dummyPolicyRequestResult :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | wait_max
    --
    -- Constraints:
    --
    -- * Maxium  of 2.1474836e9
    -- * Minimum  of -2.1474836e9
    dummyPolicyRequestWaitMax :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | wait_min
    --
    -- Constraints:
    --
    -- * Maxium  of 2.1474836e9
    -- * Minimum  of -2.1474836e9
    dummyPolicyRequestWaitMin :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DummyPolicyRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("execution_logging" Data.Aeson.Types.ToJSON..=)) (dummyPolicyRequestExecutionLogging obj) : ["name" Data.Aeson.Types.ToJSON..= dummyPolicyRequestName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("result" Data.Aeson.Types.ToJSON..=)) (dummyPolicyRequestResult obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wait_max" Data.Aeson.Types.ToJSON..=)) (dummyPolicyRequestWaitMax obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wait_min" Data.Aeson.Types.ToJSON..=)) (dummyPolicyRequestWaitMin obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("execution_logging" Data.Aeson.Types.ToJSON..=)) (dummyPolicyRequestExecutionLogging obj) : ["name" Data.Aeson.Types.ToJSON..= dummyPolicyRequestName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("result" Data.Aeson.Types.ToJSON..=)) (dummyPolicyRequestResult obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wait_max" Data.Aeson.Types.ToJSON..=)) (dummyPolicyRequestWaitMax obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wait_min" Data.Aeson.Types.ToJSON..=)) (dummyPolicyRequestWaitMin obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON DummyPolicyRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DummyPolicyRequest" (\obj -> ((((GHC.Base.pure DummyPolicyRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "execution_logging")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "result")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "wait_max")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "wait_min"))

-- | Create a new 'DummyPolicyRequest' with all required fields.
mkDummyPolicyRequest ::
  -- | 'dummyPolicyRequestName'
  Data.Text.Internal.Text ->
  DummyPolicyRequest
mkDummyPolicyRequest dummyPolicyRequestName =
  DummyPolicyRequest
    { dummyPolicyRequestExecutionLogging = GHC.Maybe.Nothing,
      dummyPolicyRequestName = dummyPolicyRequestName,
      dummyPolicyRequestResult = GHC.Maybe.Nothing,
      dummyPolicyRequestWaitMax = GHC.Maybe.Nothing,
      dummyPolicyRequestWaitMin = GHC.Maybe.Nothing
    }
