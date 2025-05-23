{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation eventsTransportsList
module AuthentikAPI.Operations.EventsTransportsList where

import qualified AuthentikAPI.Common
import AuthentikAPI.Types
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.ByteString as Data.ByteString.Internal.Type
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > GET /events/transports/
--
-- NotificationTransport Viewset
eventsTransportsList ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  EventsTransportsListParameters ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response EventsTransportsListResponse)
eventsTransportsList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either EventsTransportsListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   EventsTransportsListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PaginatedNotificationTransportList
                                                      )
                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   EventsTransportsListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ValidationError
                                                      )
                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                   EventsTransportsListResponse403
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GenericError
                                                      )
                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    ( AuthentikAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
        "/events/transports/"
        [ AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "mode") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> eventsTransportsListParametersQueryMode parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "name") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> eventsTransportsListParametersQueryName parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "ordering") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> eventsTransportsListParametersQueryOrdering parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> eventsTransportsListParametersQueryPage parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> eventsTransportsListParametersQueryPageSize parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "search") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> eventsTransportsListParametersQuerySearch parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "send_once") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> eventsTransportsListParametersQuerySendOnce parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "webhook_url") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> eventsTransportsListParametersQueryWebhookUrl parameters) (Data.Text.Internal.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/events\/transports\/.GET.parameters@ in the specification.
data EventsTransportsListParameters = EventsTransportsListParameters
  { -- | queryMode: Represents the parameter named \'mode\'
    eventsTransportsListParametersQueryMode :: (GHC.Maybe.Maybe EventsTransportsListParametersQueryMode'),
    -- | queryName: Represents the parameter named \'name\'
    eventsTransportsListParametersQueryName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryOrdering: Represents the parameter named \'ordering\'
    --
    -- Which field to use when ordering the results.
    eventsTransportsListParametersQueryOrdering :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPage: Represents the parameter named \'page\'
    --
    -- A page number within the paginated result set.
    eventsTransportsListParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPage_size: Represents the parameter named \'page_size\'
    --
    -- Number of results to return per page.
    eventsTransportsListParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | querySearch: Represents the parameter named \'search\'
    --
    -- A search term.
    eventsTransportsListParametersQuerySearch :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | querySend_once: Represents the parameter named \'send_once\'
    eventsTransportsListParametersQuerySendOnce :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryWebhook_url: Represents the parameter named \'webhook_url\'
    eventsTransportsListParametersQueryWebhookUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON EventsTransportsListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryMode" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQueryMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQuerySearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySend_once" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQuerySendOnce obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryWebhook_url" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQueryWebhookUrl obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryMode" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQueryMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQuerySearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySend_once" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQuerySendOnce obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryWebhook_url" Data.Aeson.Types.ToJSON..=)) (eventsTransportsListParametersQueryWebhookUrl obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON EventsTransportsListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "EventsTransportsListParameters" (\obj -> (((((((GHC.Base.pure EventsTransportsListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryMode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrdering")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySearch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySend_once")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryWebhook_url"))

-- | Create a new 'EventsTransportsListParameters' with all required fields.
mkEventsTransportsListParameters :: EventsTransportsListParameters
mkEventsTransportsListParameters =
  EventsTransportsListParameters
    { eventsTransportsListParametersQueryMode = GHC.Maybe.Nothing,
      eventsTransportsListParametersQueryName = GHC.Maybe.Nothing,
      eventsTransportsListParametersQueryOrdering = GHC.Maybe.Nothing,
      eventsTransportsListParametersQueryPage = GHC.Maybe.Nothing,
      eventsTransportsListParametersQueryPageSize = GHC.Maybe.Nothing,
      eventsTransportsListParametersQuerySearch = GHC.Maybe.Nothing,
      eventsTransportsListParametersQuerySendOnce = GHC.Maybe.Nothing,
      eventsTransportsListParametersQueryWebhookUrl = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/events\/transports\/.GET.parameters.properties.queryMode@ in the specification.
--
-- Represents the parameter named \'mode\'
data EventsTransportsListParametersQueryMode'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    EventsTransportsListParametersQueryMode'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    EventsTransportsListParametersQueryMode'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"email"@
    EventsTransportsListParametersQueryMode'EnumEmail
  | -- | Represents the JSON value @"local"@
    EventsTransportsListParametersQueryMode'EnumLocal
  | -- | Represents the JSON value @"webhook"@
    EventsTransportsListParametersQueryMode'EnumWebhook
  | -- | Represents the JSON value @"webhook_slack"@
    EventsTransportsListParametersQueryMode'EnumWebhookSlack
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON EventsTransportsListParametersQueryMode' where
  toJSON (EventsTransportsListParametersQueryMode'Other val) = val
  toJSON (EventsTransportsListParametersQueryMode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (EventsTransportsListParametersQueryMode'EnumEmail) = "email"
  toJSON (EventsTransportsListParametersQueryMode'EnumLocal) = "local"
  toJSON (EventsTransportsListParametersQueryMode'EnumWebhook) = "webhook"
  toJSON (EventsTransportsListParametersQueryMode'EnumWebhookSlack) = "webhook_slack"

instance Data.Aeson.Types.FromJSON.FromJSON EventsTransportsListParametersQueryMode' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "email" -> EventsTransportsListParametersQueryMode'EnumEmail
          | val GHC.Classes.== "local" -> EventsTransportsListParametersQueryMode'EnumLocal
          | val GHC.Classes.== "webhook" -> EventsTransportsListParametersQueryMode'EnumWebhook
          | val GHC.Classes.== "webhook_slack" -> EventsTransportsListParametersQueryMode'EnumWebhookSlack
          | GHC.Base.otherwise -> EventsTransportsListParametersQueryMode'Other val
      )

-- | Represents a response of the operation 'eventsTransportsList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'EventsTransportsListResponseError' is used.
data EventsTransportsListResponse
  = -- | Means either no matching case available or a parse error
    EventsTransportsListResponseError GHC.Base.String
  | EventsTransportsListResponse200 PaginatedNotificationTransportList
  | EventsTransportsListResponse400 ValidationError
  | EventsTransportsListResponse403 GenericError
  deriving (GHC.Show.Show, GHC.Classes.Eq)
