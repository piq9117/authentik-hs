{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema UserLoginStage
module AuthentikAPI.Types.UserLoginStage where

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

-- | Defines the object schema located at @components.schemas.UserLoginStage@ in the specification.
--
-- UserLoginStage Serializer
data UserLoginStage = UserLoginStage
  { -- | component: Get object type so that we know how to edit the object
    userLoginStageComponent :: Data.Text.Internal.Text,
    -- | flow_set
    userLoginStageFlowSet :: (GHC.Maybe.Maybe [FlowSet]),
    -- | geoip_binding: Bind sessions created by this stage to the configured GeoIP location
    userLoginStageGeoipBinding :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | meta_model_name: Return internal model name
    userLoginStageMetaModelName :: Data.Text.Internal.Text,
    -- | name
    userLoginStageName :: Data.Text.Internal.Text,
    -- | network_binding: Bind sessions created by this stage to the configured network
    userLoginStageNetworkBinding :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | pk
    userLoginStagePk :: Data.Text.Internal.Text,
    -- | remember_me_offset: Offset the session will be extended by when the user picks the remember me option. Default of 0 means that the remember me option will not be shown. (Format: hours=-1;minutes=-2;seconds=-3)
    userLoginStageRememberMeOffset :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | session_duration: Determines how long a session lasts. Default of 0 means that the sessions lasts until the browser is closed. (Format: hours=-1;minutes=-2;seconds=-3)
    userLoginStageSessionDuration :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | terminate_other_sessions: Terminate all other sessions of the user logging in.
    userLoginStageTerminateOtherSessions :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | verbose_name: Return object\'s verbose_name
    userLoginStageVerboseName :: Data.Text.Internal.Text,
    -- | verbose_name_plural: Return object\'s plural verbose_name
    userLoginStageVerboseNamePlural :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON UserLoginStage where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= userLoginStageComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (userLoginStageFlowSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("geoip_binding" Data.Aeson.Types.ToJSON..=)) (userLoginStageGeoipBinding obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= userLoginStageMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= userLoginStageName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("network_binding" Data.Aeson.Types.ToJSON..=)) (userLoginStageNetworkBinding obj) : ["pk" Data.Aeson.Types.ToJSON..= userLoginStagePk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("remember_me_offset" Data.Aeson.Types.ToJSON..=)) (userLoginStageRememberMeOffset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("session_duration" Data.Aeson.Types.ToJSON..=)) (userLoginStageSessionDuration obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("terminate_other_sessions" Data.Aeson.Types.ToJSON..=)) (userLoginStageTerminateOtherSessions obj) : ["verbose_name" Data.Aeson.Types.ToJSON..= userLoginStageVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= userLoginStageVerboseNamePlural obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= userLoginStageComponent obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_set" Data.Aeson.Types.ToJSON..=)) (userLoginStageFlowSet obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("geoip_binding" Data.Aeson.Types.ToJSON..=)) (userLoginStageGeoipBinding obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= userLoginStageMetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= userLoginStageName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("network_binding" Data.Aeson.Types.ToJSON..=)) (userLoginStageNetworkBinding obj) : ["pk" Data.Aeson.Types.ToJSON..= userLoginStagePk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("remember_me_offset" Data.Aeson.Types.ToJSON..=)) (userLoginStageRememberMeOffset obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("session_duration" Data.Aeson.Types.ToJSON..=)) (userLoginStageSessionDuration obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("terminate_other_sessions" Data.Aeson.Types.ToJSON..=)) (userLoginStageTerminateOtherSessions obj) : ["verbose_name" Data.Aeson.Types.ToJSON..= userLoginStageVerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= userLoginStageVerboseNamePlural obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON UserLoginStage where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "UserLoginStage" (\obj -> (((((((((((GHC.Base.pure UserLoginStage GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow_set")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "geoip_binding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "meta_model_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "network_binding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "remember_me_offset")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "session_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "terminate_other_sessions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name_plural"))

-- | Create a new 'UserLoginStage' with all required fields.
mkUserLoginStage ::
  -- | 'userLoginStageComponent'
  Data.Text.Internal.Text ->
  -- | 'userLoginStageMetaModelName'
  Data.Text.Internal.Text ->
  -- | 'userLoginStageName'
  Data.Text.Internal.Text ->
  -- | 'userLoginStagePk'
  Data.Text.Internal.Text ->
  -- | 'userLoginStageVerboseName'
  Data.Text.Internal.Text ->
  -- | 'userLoginStageVerboseNamePlural'
  Data.Text.Internal.Text ->
  UserLoginStage
mkUserLoginStage userLoginStageComponent userLoginStageMetaModelName userLoginStageName userLoginStagePk userLoginStageVerboseName userLoginStageVerboseNamePlural =
  UserLoginStage
    { userLoginStageComponent = userLoginStageComponent,
      userLoginStageFlowSet = GHC.Maybe.Nothing,
      userLoginStageGeoipBinding = GHC.Maybe.Nothing,
      userLoginStageMetaModelName = userLoginStageMetaModelName,
      userLoginStageName = userLoginStageName,
      userLoginStageNetworkBinding = GHC.Maybe.Nothing,
      userLoginStagePk = userLoginStagePk,
      userLoginStageRememberMeOffset = GHC.Maybe.Nothing,
      userLoginStageSessionDuration = GHC.Maybe.Nothing,
      userLoginStageTerminateOtherSessions = GHC.Maybe.Nothing,
      userLoginStageVerboseName = userLoginStageVerboseName,
      userLoginStageVerboseNamePlural = userLoginStageVerboseNamePlural
    }
