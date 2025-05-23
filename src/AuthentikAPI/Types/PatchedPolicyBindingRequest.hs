{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PatchedPolicyBindingRequest
module AuthentikAPI.Types.PatchedPolicyBindingRequest where

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

-- | Defines the object schema located at @components.schemas.PatchedPolicyBindingRequest@ in the specification.
--
-- PolicyBinding Serializer
data PatchedPolicyBindingRequest = PatchedPolicyBindingRequest
  { -- | enabled
    patchedPolicyBindingRequestEnabled :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | failure_result: Result if the Policy execution fails.
    patchedPolicyBindingRequestFailureResult :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | group
    patchedPolicyBindingRequestGroup :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | negate: Negates the outcome of the policy. Messages are unaffected.
    patchedPolicyBindingRequestNegate :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | order
    --
    -- Constraints:
    --
    -- * Maxium  of 2.1474836e9
    -- * Minimum  of -2.1474836e9
    patchedPolicyBindingRequestOrder :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | policy
    patchedPolicyBindingRequestPolicy :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | target
    patchedPolicyBindingRequestTarget :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | timeout: Timeout after which Policy execution is terminated.
    --
    -- Constraints:
    --
    -- * Maxium  of 2.1474836e9
    -- * Minimum  of 0.0
    patchedPolicyBindingRequestTimeout :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | user
    patchedPolicyBindingRequestUser :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable GHC.Types.Int))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PatchedPolicyBindingRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_result" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestFailureResult obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("negate" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestNegate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestOrder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("policy" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestPolicy obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("target" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestTarget obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timeout" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestTimeout obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestUser obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_result" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestFailureResult obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("negate" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestNegate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestOrder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("policy" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestPolicy obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("target" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestTarget obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timeout" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestTimeout obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (patchedPolicyBindingRequestUser obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PatchedPolicyBindingRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PatchedPolicyBindingRequest" (\obj -> ((((((((GHC.Base.pure PatchedPolicyBindingRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failure_result")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "negate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "policy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "target")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "timeout")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user"))

-- | Create a new 'PatchedPolicyBindingRequest' with all required fields.
mkPatchedPolicyBindingRequest :: PatchedPolicyBindingRequest
mkPatchedPolicyBindingRequest =
  PatchedPolicyBindingRequest
    { patchedPolicyBindingRequestEnabled = GHC.Maybe.Nothing,
      patchedPolicyBindingRequestFailureResult = GHC.Maybe.Nothing,
      patchedPolicyBindingRequestGroup = GHC.Maybe.Nothing,
      patchedPolicyBindingRequestNegate = GHC.Maybe.Nothing,
      patchedPolicyBindingRequestOrder = GHC.Maybe.Nothing,
      patchedPolicyBindingRequestPolicy = GHC.Maybe.Nothing,
      patchedPolicyBindingRequestTarget = GHC.Maybe.Nothing,
      patchedPolicyBindingRequestTimeout = GHC.Maybe.Nothing,
      patchedPolicyBindingRequestUser = GHC.Maybe.Nothing
    }
