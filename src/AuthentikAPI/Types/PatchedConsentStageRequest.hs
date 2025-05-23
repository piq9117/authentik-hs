{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PatchedConsentStageRequest
module AuthentikAPI.Types.PatchedConsentStageRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.ConsentStageModeEnum
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

-- | Defines the object schema located at @components.schemas.PatchedConsentStageRequest@ in the specification.
--
-- ConsentStage Serializer
data PatchedConsentStageRequest = PatchedConsentStageRequest
  { -- | consent_expire_in: Offset after which consent expires. (Format: hours=1;minutes=2;seconds=3).
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedConsentStageRequestConsentExpireIn :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | flow_set
    patchedConsentStageRequestFlowSet :: (GHC.Maybe.Maybe [FlowSetRequest]),
    -- | mode
    patchedConsentStageRequestMode :: (GHC.Maybe.Maybe ConsentStageModeEnum),
    -- | name
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedConsentStageRequestName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PatchedConsentStageRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("consent_expire_in" Data.Aeson.Types.ToJSON..=)) (patchedConsentStageRequestConsentExpireIn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (patchedConsentStageRequestFlowSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mode" Data.Aeson.Types.ToJSON..=)) (patchedConsentStageRequestMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedConsentStageRequestName obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("consent_expire_in" Data.Aeson.Types.ToJSON..=)) (patchedConsentStageRequestConsentExpireIn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (patchedConsentStageRequestFlowSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mode" Data.Aeson.Types.ToJSON..=)) (patchedConsentStageRequestMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedConsentStageRequestName obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PatchedConsentStageRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PatchedConsentStageRequest" (\obj -> (((GHC.Base.pure PatchedConsentStageRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "consent_expire_in")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name"))

-- | Create a new 'PatchedConsentStageRequest' with all required fields.
mkPatchedConsentStageRequest :: PatchedConsentStageRequest
mkPatchedConsentStageRequest =
  PatchedConsentStageRequest
    { patchedConsentStageRequestConsentExpireIn = GHC.Maybe.Nothing,
      patchedConsentStageRequestFlowSet = GHC.Maybe.Nothing,
      patchedConsentStageRequestMode = GHC.Maybe.Nothing,
      patchedConsentStageRequestName = GHC.Maybe.Nothing
    }
