{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation sourcesGroupConnectionsPlexList
module AuthentikAPI.Operations.SourcesGroupConnectionsPlexList where

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

-- | > GET /sources/group_connections/plex/
--
-- Group-source connection Viewset
sourcesGroupConnectionsPlexList ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  SourcesGroupConnectionsPlexListParameters ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response SourcesGroupConnectionsPlexListResponse)
sourcesGroupConnectionsPlexList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either SourcesGroupConnectionsPlexListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   SourcesGroupConnectionsPlexListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PaginatedGroupPlexSourceConnectionList
                                                      )
                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   SourcesGroupConnectionsPlexListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ValidationError
                                                      )
                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                   SourcesGroupConnectionsPlexListResponse403
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
        "/sources/group_connections/plex/"
        [ AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "group") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesGroupConnectionsPlexListParametersQueryGroup parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "ordering") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesGroupConnectionsPlexListParametersQueryOrdering parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesGroupConnectionsPlexListParametersQueryPage parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesGroupConnectionsPlexListParametersQueryPageSize parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "search") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesGroupConnectionsPlexListParametersQuerySearch parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "source__slug") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesGroupConnectionsPlexListParametersQuerySource_Slug parameters) (Data.Text.Internal.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sources\/group_connections\/plex\/.GET.parameters@ in the specification.
data SourcesGroupConnectionsPlexListParameters = SourcesGroupConnectionsPlexListParameters
  { -- | queryGroup: Represents the parameter named \'group\'
    sourcesGroupConnectionsPlexListParametersQueryGroup :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryOrdering: Represents the parameter named \'ordering\'
    --
    -- Which field to use when ordering the results.
    sourcesGroupConnectionsPlexListParametersQueryOrdering :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPage: Represents the parameter named \'page\'
    --
    -- A page number within the paginated result set.
    sourcesGroupConnectionsPlexListParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPage_size: Represents the parameter named \'page_size\'
    --
    -- Number of results to return per page.
    sourcesGroupConnectionsPlexListParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | querySearch: Represents the parameter named \'search\'
    --
    -- A search term.
    sourcesGroupConnectionsPlexListParametersQuerySearch :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | querySource__slug: Represents the parameter named \'source__slug\'
    sourcesGroupConnectionsPlexListParametersQuerySource_Slug :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourcesGroupConnectionsPlexListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryGroup" Data.Aeson.Types.ToJSON..=)) (sourcesGroupConnectionsPlexListParametersQueryGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (sourcesGroupConnectionsPlexListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (sourcesGroupConnectionsPlexListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (sourcesGroupConnectionsPlexListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (sourcesGroupConnectionsPlexListParametersQuerySearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySource__slug" Data.Aeson.Types.ToJSON..=)) (sourcesGroupConnectionsPlexListParametersQuerySource_Slug obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryGroup" Data.Aeson.Types.ToJSON..=)) (sourcesGroupConnectionsPlexListParametersQueryGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (sourcesGroupConnectionsPlexListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (sourcesGroupConnectionsPlexListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (sourcesGroupConnectionsPlexListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (sourcesGroupConnectionsPlexListParametersQuerySearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySource__slug" Data.Aeson.Types.ToJSON..=)) (sourcesGroupConnectionsPlexListParametersQuerySource_Slug obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SourcesGroupConnectionsPlexListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourcesGroupConnectionsPlexListParameters" (\obj -> (((((GHC.Base.pure SourcesGroupConnectionsPlexListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryGroup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrdering")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySearch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySource__slug"))

-- | Create a new 'SourcesGroupConnectionsPlexListParameters' with all required fields.
mkSourcesGroupConnectionsPlexListParameters :: SourcesGroupConnectionsPlexListParameters
mkSourcesGroupConnectionsPlexListParameters =
  SourcesGroupConnectionsPlexListParameters
    { sourcesGroupConnectionsPlexListParametersQueryGroup = GHC.Maybe.Nothing,
      sourcesGroupConnectionsPlexListParametersQueryOrdering = GHC.Maybe.Nothing,
      sourcesGroupConnectionsPlexListParametersQueryPage = GHC.Maybe.Nothing,
      sourcesGroupConnectionsPlexListParametersQueryPageSize = GHC.Maybe.Nothing,
      sourcesGroupConnectionsPlexListParametersQuerySearch = GHC.Maybe.Nothing,
      sourcesGroupConnectionsPlexListParametersQuerySource_Slug = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'sourcesGroupConnectionsPlexList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'SourcesGroupConnectionsPlexListResponseError' is used.
data SourcesGroupConnectionsPlexListResponse
  = -- | Means either no matching case available or a parse error
    SourcesGroupConnectionsPlexListResponseError GHC.Base.String
  | SourcesGroupConnectionsPlexListResponse200 PaginatedGroupPlexSourceConnectionList
  | SourcesGroupConnectionsPlexListResponse400 ValidationError
  | SourcesGroupConnectionsPlexListResponse403 GenericError
  deriving (GHC.Show.Show, GHC.Classes.Eq)
