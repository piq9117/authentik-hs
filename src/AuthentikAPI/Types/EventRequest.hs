{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema EventRequest
module AuthentikAPI.Types.EventRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.EventActions
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

-- | Defines the object schema located at @components.schemas.EventRequest@ in the specification.
--
-- Event Serializer
data EventRequest = EventRequest
  { -- | action
    eventRequestAction :: EventActions,
    -- | app
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    eventRequestApp :: Data.Text.Internal.Text,
    -- | brand
    eventRequestBrand :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | client_ip
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    eventRequestClientIp :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | context
    eventRequestContext :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | expires
    eventRequestExpires :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | user
    eventRequestUser :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON EventRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["action" Data.Aeson.Types.ToJSON..= eventRequestAction obj] : ["app" Data.Aeson.Types.ToJSON..= eventRequestApp obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("brand" Data.Aeson.Types.ToJSON..=)) (eventRequestBrand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_ip" Data.Aeson.Types.ToJSON..=)) (eventRequestClientIp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("context" Data.Aeson.Types.ToJSON..=)) (eventRequestContext obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires" Data.Aeson.Types.ToJSON..=)) (eventRequestExpires obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (eventRequestUser obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["action" Data.Aeson.Types.ToJSON..= eventRequestAction obj] : ["app" Data.Aeson.Types.ToJSON..= eventRequestApp obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("brand" Data.Aeson.Types.ToJSON..=)) (eventRequestBrand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_ip" Data.Aeson.Types.ToJSON..=)) (eventRequestClientIp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("context" Data.Aeson.Types.ToJSON..=)) (eventRequestContext obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires" Data.Aeson.Types.ToJSON..=)) (eventRequestExpires obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (eventRequestUser obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON EventRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "EventRequest" (\obj -> ((((((GHC.Base.pure EventRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "app")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "client_ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "context")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user"))

-- | Create a new 'EventRequest' with all required fields.
mkEventRequest ::
  -- | 'eventRequestAction'
  EventActions ->
  -- | 'eventRequestApp'
  Data.Text.Internal.Text ->
  EventRequest
mkEventRequest eventRequestAction eventRequestApp =
  EventRequest
    { eventRequestAction = eventRequestAction,
      eventRequestApp = eventRequestApp,
      eventRequestBrand = GHC.Maybe.Nothing,
      eventRequestClientIp = GHC.Maybe.Nothing,
      eventRequestContext = GHC.Maybe.Nothing,
      eventRequestExpires = GHC.Maybe.Nothing,
      eventRequestUser = GHC.Maybe.Nothing
    }
