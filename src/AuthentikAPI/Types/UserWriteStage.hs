{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema UserWriteStage
module AuthentikAPI.Types.UserWriteStage where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.FlowSet
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

-- | Defines the object schema located at @components.schemas.UserWriteStage@ in the specification.
--
-- UserWriteStage Serializer
data UserWriteStage = UserWriteStage
  { -- | component: Get object type so that we know how to edit the object
    userWriteStageComponent :: Data.Text.Internal.Text,
    -- | create_users_as_inactive: When set, newly created users are inactive and cannot login.
    userWriteStageCreateUsersAsInactive :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | create_users_group: Optionally add newly created users to this group.
    userWriteStageCreateUsersGroup :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | flow_set
    userWriteStageFlowSet :: (GHC.Maybe.Maybe [FlowSet]),
    -- | meta_model_name: Return internal model name
    userWriteStageMetaModelName :: Data.Text.Internal.Text,
    -- | name
    userWriteStageName :: Data.Text.Internal.Text,
    -- | pk
    userWriteStagePk :: Data.Text.Internal.Text,
    -- | user_creation_mode
    userWriteStageUserCreationMode :: (GHC.Maybe.Maybe UserCreationModeEnum),
    -- | user_path_template
    userWriteStageUserPathTemplate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | user_type
    userWriteStageUserType :: (GHC.Maybe.Maybe UserTypeEnum),
    -- | verbose_name: Return object\'s verbose_name
    userWriteStageVerboseName :: Data.Text.Internal.Text,
    -- | verbose_name_plural: Return object\'s plural verbose_name
    userWriteStageVerboseNamePlural :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON UserWriteStage where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= userWriteStageComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("create_users_as_inactive" Data.Aeson.Types.ToJSON..=)) (userWriteStageCreateUsersAsInactive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("create_users_group" Data.Aeson.Types.ToJSON..=)) (userWriteStageCreateUsersGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (userWriteStageFlowSet obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= userWriteStageMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= userWriteStageName obj] : ["pk" Data.Aeson.Types.ToJSON..= userWriteStagePk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_creation_mode" Data.Aeson.Types.ToJSON..=)) (userWriteStageUserCreationMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_path_template" Data.Aeson.Types.ToJSON..=)) (userWriteStageUserPathTemplate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_type" Data.Aeson.Types.ToJSON..=)) (userWriteStageUserType obj) : ["verbose_name" Data.Aeson.Types.ToJSON..= userWriteStageVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= userWriteStageVerboseNamePlural obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= userWriteStageComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("create_users_as_inactive" Data.Aeson.Types.ToJSON..=)) (userWriteStageCreateUsersAsInactive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("create_users_group" Data.Aeson.Types.ToJSON..=)) (userWriteStageCreateUsersGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (userWriteStageFlowSet obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= userWriteStageMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= userWriteStageName obj] : ["pk" Data.Aeson.Types.ToJSON..= userWriteStagePk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_creation_mode" Data.Aeson.Types.ToJSON..=)) (userWriteStageUserCreationMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_path_template" Data.Aeson.Types.ToJSON..=)) (userWriteStageUserPathTemplate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_type" Data.Aeson.Types.ToJSON..=)) (userWriteStageUserType obj) : ["verbose_name" Data.Aeson.Types.ToJSON..= userWriteStageVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= userWriteStageVerboseNamePlural obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON UserWriteStage where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "UserWriteStage" (\obj -> (((((((((((GHC.Base.pure UserWriteStage GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "create_users_as_inactive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "create_users_group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "meta_model_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_creation_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_path_template")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name_plural"))

-- | Create a new 'UserWriteStage' with all required fields.
mkUserWriteStage ::
  -- | 'userWriteStageComponent'
  Data.Text.Internal.Text ->
  -- | 'userWriteStageMetaModelName'
  Data.Text.Internal.Text ->
  -- | 'userWriteStageName'
  Data.Text.Internal.Text ->
  -- | 'userWriteStagePk'
  Data.Text.Internal.Text ->
  -- | 'userWriteStageVerboseName'
  Data.Text.Internal.Text ->
  -- | 'userWriteStageVerboseNamePlural'
  Data.Text.Internal.Text ->
  UserWriteStage
mkUserWriteStage userWriteStageComponent userWriteStageMetaModelName userWriteStageName userWriteStagePk userWriteStageVerboseName userWriteStageVerboseNamePlural =
  UserWriteStage
    { userWriteStageComponent = userWriteStageComponent,
      userWriteStageCreateUsersAsInactive = GHC.Maybe.Nothing,
      userWriteStageCreateUsersGroup = GHC.Maybe.Nothing,
      userWriteStageFlowSet = GHC.Maybe.Nothing,
      userWriteStageMetaModelName = userWriteStageMetaModelName,
      userWriteStageName = userWriteStageName,
      userWriteStagePk = userWriteStagePk,
      userWriteStageUserCreationMode = GHC.Maybe.Nothing,
      userWriteStageUserPathTemplate = GHC.Maybe.Nothing,
      userWriteStageUserType = GHC.Maybe.Nothing,
      userWriteStageVerboseName = userWriteStageVerboseName,
      userWriteStageVerboseNamePlural = userWriteStageVerboseNamePlural
    }
