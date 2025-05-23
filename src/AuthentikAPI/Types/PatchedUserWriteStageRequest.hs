{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PatchedUserWriteStageRequest
module AuthentikAPI.Types.PatchedUserWriteStageRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.FlowSetRequest
import {-# SOURCE #-} AuthentikAPI.Types.UserCreationModeEnum
import {-# SOURCE #-} AuthentikAPI.Types.UserTypeEnum
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

-- | Defines the object schema located at @components.schemas.PatchedUserWriteStageRequest@ in the specification.
--
-- UserWriteStage Serializer
data PatchedUserWriteStageRequest = PatchedUserWriteStageRequest
  { -- | create_users_as_inactive: When set, newly created users are inactive and cannot login.
    patchedUserWriteStageRequestCreateUsersAsInactive :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | create_users_group: Optionally add newly created users to this group.
    patchedUserWriteStageRequestCreateUsersGroup :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | flow_set
    patchedUserWriteStageRequestFlowSet :: (GHC.Maybe.Maybe [FlowSetRequest]),
    -- | name
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedUserWriteStageRequestName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | user_creation_mode
    patchedUserWriteStageRequestUserCreationMode :: (GHC.Maybe.Maybe UserCreationModeEnum),
    -- | user_path_template
    patchedUserWriteStageRequestUserPathTemplate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | user_type
    patchedUserWriteStageRequestUserType :: (GHC.Maybe.Maybe UserTypeEnum)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PatchedUserWriteStageRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("create_users_as_inactive" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestCreateUsersAsInactive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("create_users_group" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestCreateUsersGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestFlowSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_creation_mode" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestUserCreationMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_path_template" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestUserPathTemplate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_type" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestUserType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("create_users_as_inactive" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestCreateUsersAsInactive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("create_users_group" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestCreateUsersGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestFlowSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_creation_mode" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestUserCreationMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_path_template" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestUserPathTemplate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_type" Data.Aeson.Types.ToJSON..=)) (patchedUserWriteStageRequestUserType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PatchedUserWriteStageRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PatchedUserWriteStageRequest" (\obj -> ((((((GHC.Base.pure PatchedUserWriteStageRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "create_users_as_inactive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "create_users_group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_creation_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_path_template")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_type"))

-- | Create a new 'PatchedUserWriteStageRequest' with all required fields.
mkPatchedUserWriteStageRequest :: PatchedUserWriteStageRequest
mkPatchedUserWriteStageRequest =
  PatchedUserWriteStageRequest
    { patchedUserWriteStageRequestCreateUsersAsInactive = GHC.Maybe.Nothing,
      patchedUserWriteStageRequestCreateUsersGroup = GHC.Maybe.Nothing,
      patchedUserWriteStageRequestFlowSet = GHC.Maybe.Nothing,
      patchedUserWriteStageRequestName = GHC.Maybe.Nothing,
      patchedUserWriteStageRequestUserCreationMode = GHC.Maybe.Nothing,
      patchedUserWriteStageRequestUserPathTemplate = GHC.Maybe.Nothing,
      patchedUserWriteStageRequestUserType = GHC.Maybe.Nothing
    }
