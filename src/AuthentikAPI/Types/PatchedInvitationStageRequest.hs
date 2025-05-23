{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PatchedInvitationStageRequest
module AuthentikAPI.Types.PatchedInvitationStageRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.FlowSetRequest
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

-- | Defines the object schema located at @components.schemas.PatchedInvitationStageRequest@ in the specification.
--
-- InvitationStage Serializer
data PatchedInvitationStageRequest = PatchedInvitationStageRequest
  { -- | continue_flow_without_invitation: If this flag is set, this Stage will jump to the next Stage when no Invitation is given. By default this Stage will cancel the Flow when no invitation is given.
    patchedInvitationStageRequestContinueFlowWithoutInvitation :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | flow_set
    patchedInvitationStageRequestFlowSet :: (GHC.Maybe.Maybe [FlowSetRequest]),
    -- | name
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedInvitationStageRequestName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PatchedInvitationStageRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("continue_flow_without_invitation" Data.Aeson.Types.ToJSON..=)) (patchedInvitationStageRequestContinueFlowWithoutInvitation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (patchedInvitationStageRequestFlowSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedInvitationStageRequestName obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("continue_flow_without_invitation" Data.Aeson.Types.ToJSON..=)) (patchedInvitationStageRequestContinueFlowWithoutInvitation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (patchedInvitationStageRequestFlowSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedInvitationStageRequestName obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PatchedInvitationStageRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PatchedInvitationStageRequest" (\obj -> ((GHC.Base.pure PatchedInvitationStageRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "continue_flow_without_invitation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name"))

-- | Create a new 'PatchedInvitationStageRequest' with all required fields.
mkPatchedInvitationStageRequest :: PatchedInvitationStageRequest
mkPatchedInvitationStageRequest =
  PatchedInvitationStageRequest
    { patchedInvitationStageRequestContinueFlowWithoutInvitation = GHC.Maybe.Nothing,
      patchedInvitationStageRequestFlowSet = GHC.Maybe.Nothing,
      patchedInvitationStageRequestName = GHC.Maybe.Nothing
    }
