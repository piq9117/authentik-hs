{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SystemTask
module AuthentikAPI.Types.SystemTask where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.LogEvent
import {-# SOURCE #-} AuthentikAPI.Types.SystemTaskStatusEnum
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

-- | Defines the object schema located at @components.schemas.SystemTask@ in the specification.
--
-- Serialize TaskInfo and TaskResult
data SystemTask = SystemTask
  { -- | description
    systemTaskDescription :: Data.Text.Internal.Text,
    -- | duration
    systemTaskDuration :: GHC.Types.Double,
    -- | expires
    systemTaskExpires :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | expiring
    systemTaskExpiring :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | finish_timestamp
    systemTaskFinishTimestamp :: Data.Text.Internal.Text,
    -- | full_name: Get full name with UID
    systemTaskFullName :: Data.Text.Internal.Text,
    -- | messages
    systemTaskMessages :: [LogEvent],
    -- | name
    systemTaskName :: Data.Text.Internal.Text,
    -- | start_timestamp
    systemTaskStartTimestamp :: Data.Text.Internal.Text,
    -- | status
    systemTaskStatus :: SystemTaskStatusEnum,
    -- | uid
    systemTaskUid :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | uuid
    systemTaskUuid :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SystemTask where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["description" Data.Aeson.Types.ToJSON..= systemTaskDescription obj] : ["duration" Data.Aeson.Types.ToJSON..= systemTaskDuration obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires" Data.Aeson.Types.ToJSON..=)) (systemTaskExpires obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expiring" Data.Aeson.Types.ToJSON..=)) (systemTaskExpiring obj) : ["finish_timestamp" Data.Aeson.Types.ToJSON..= systemTaskFinishTimestamp obj] : ["full_name" Data.Aeson.Types.ToJSON..= systemTaskFullName obj] : ["messages" Data.Aeson.Types.ToJSON..= systemTaskMessages obj] : ["name" Data.Aeson.Types.ToJSON..= systemTaskName obj] : ["start_timestamp" Data.Aeson.Types.ToJSON..= systemTaskStartTimestamp obj] : ["status" Data.Aeson.Types.ToJSON..= systemTaskStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("uid" Data.Aeson.Types.ToJSON..=)) (systemTaskUid obj) : ["uuid" Data.Aeson.Types.ToJSON..= systemTaskUuid obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["description" Data.Aeson.Types.ToJSON..= systemTaskDescription obj] : ["duration" Data.Aeson.Types.ToJSON..= systemTaskDuration obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires" Data.Aeson.Types.ToJSON..=)) (systemTaskExpires obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expiring" Data.Aeson.Types.ToJSON..=)) (systemTaskExpiring obj) : ["finish_timestamp" Data.Aeson.Types.ToJSON..= systemTaskFinishTimestamp obj] : ["full_name" Data.Aeson.Types.ToJSON..= systemTaskFullName obj] : ["messages" Data.Aeson.Types.ToJSON..= systemTaskMessages obj] : ["name" Data.Aeson.Types.ToJSON..= systemTaskName obj] : ["start_timestamp" Data.Aeson.Types.ToJSON..= systemTaskStartTimestamp obj] : ["status" Data.Aeson.Types.ToJSON..= systemTaskStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("uid" Data.Aeson.Types.ToJSON..=)) (systemTaskUid obj) : ["uuid" Data.Aeson.Types.ToJSON..= systemTaskUuid obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SystemTask where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SystemTask" (\obj -> (((((((((((GHC.Base.pure SystemTask GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expiring")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finish_timestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "full_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start_timestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "uid")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "uuid"))

-- | Create a new 'SystemTask' with all required fields.
mkSystemTask ::
  -- | 'systemTaskDescription'
  Data.Text.Internal.Text ->
  -- | 'systemTaskDuration'
  GHC.Types.Double ->
  -- | 'systemTaskFinishTimestamp'
  Data.Text.Internal.Text ->
  -- | 'systemTaskFullName'
  Data.Text.Internal.Text ->
  -- | 'systemTaskMessages'
  [LogEvent] ->
  -- | 'systemTaskName'
  Data.Text.Internal.Text ->
  -- | 'systemTaskStartTimestamp'
  Data.Text.Internal.Text ->
  -- | 'systemTaskStatus'
  SystemTaskStatusEnum ->
  -- | 'systemTaskUuid'
  Data.Text.Internal.Text ->
  SystemTask
mkSystemTask systemTaskDescription systemTaskDuration systemTaskFinishTimestamp systemTaskFullName systemTaskMessages systemTaskName systemTaskStartTimestamp systemTaskStatus systemTaskUuid =
  SystemTask
    { systemTaskDescription = systemTaskDescription,
      systemTaskDuration = systemTaskDuration,
      systemTaskExpires = GHC.Maybe.Nothing,
      systemTaskExpiring = GHC.Maybe.Nothing,
      systemTaskFinishTimestamp = systemTaskFinishTimestamp,
      systemTaskFullName = systemTaskFullName,
      systemTaskMessages = systemTaskMessages,
      systemTaskName = systemTaskName,
      systemTaskStartTimestamp = systemTaskStartTimestamp,
      systemTaskStatus = systemTaskStatus,
      systemTaskUid = GHC.Maybe.Nothing,
      systemTaskUuid = systemTaskUuid
    }
