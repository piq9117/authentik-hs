{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema FlowErrorChallenge
module AuthentikAPI.Types.FlowErrorChallenge where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.ContextualFlowInfo
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

-- | Defines the object schema located at @components.schemas.FlowErrorChallenge@ in the specification.
--
-- Challenge class when an unhandled error occurs during a stage. Normal users
-- are shown an error message, superusers are shown a full stacktrace.
data FlowErrorChallenge = FlowErrorChallenge
  { -- | component
    flowErrorChallengeComponent :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | error
    flowErrorChallengeError :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | flow_info: Contextual flow information for a challenge
    flowErrorChallengeFlowInfo :: (GHC.Maybe.Maybe ContextualFlowInfo),
    -- | request_id
    flowErrorChallengeRequestId :: Data.Text.Internal.Text,
    -- | response_errors
    flowErrorChallengeResponseErrors :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | traceback
    flowErrorChallengeTraceback :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON FlowErrorChallenge where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("component" Data.Aeson.Types.ToJSON..=)) (flowErrorChallengeComponent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (flowErrorChallengeError obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_info" Data.Aeson.Types.ToJSON..=)) (flowErrorChallengeFlowInfo obj) : ["request_id" Data.Aeson.Types.ToJSON..= flowErrorChallengeRequestId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("response_errors" Data.Aeson.Types.ToJSON..=)) (flowErrorChallengeResponseErrors obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("traceback" Data.Aeson.Types.ToJSON..=)) (flowErrorChallengeTraceback obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("component" Data.Aeson.Types.ToJSON..=)) (flowErrorChallengeComponent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (flowErrorChallengeError obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_info" Data.Aeson.Types.ToJSON..=)) (flowErrorChallengeFlowInfo obj) : ["request_id" Data.Aeson.Types.ToJSON..= flowErrorChallengeRequestId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("response_errors" Data.Aeson.Types.ToJSON..=)) (flowErrorChallengeResponseErrors obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("traceback" Data.Aeson.Types.ToJSON..=)) (flowErrorChallengeTraceback obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON FlowErrorChallenge where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "FlowErrorChallenge" (\obj -> (((((GHC.Base.pure FlowErrorChallenge GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow_info")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "request_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "response_errors")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "traceback"))

-- | Create a new 'FlowErrorChallenge' with all required fields.
mkFlowErrorChallenge ::
  -- | 'flowErrorChallengeRequestId'
  Data.Text.Internal.Text ->
  FlowErrorChallenge
mkFlowErrorChallenge flowErrorChallengeRequestId =
  FlowErrorChallenge
    { flowErrorChallengeComponent = GHC.Maybe.Nothing,
      flowErrorChallengeError = GHC.Maybe.Nothing,
      flowErrorChallengeFlowInfo = GHC.Maybe.Nothing,
      flowErrorChallengeRequestId = flowErrorChallengeRequestId,
      flowErrorChallengeResponseErrors = GHC.Maybe.Nothing,
      flowErrorChallengeTraceback = GHC.Maybe.Nothing
    }
