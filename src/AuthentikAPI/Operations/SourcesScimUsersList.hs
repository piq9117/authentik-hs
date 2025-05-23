{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation sourcesScimUsersList
module AuthentikAPI.Operations.SourcesScimUsersList where

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

-- | > GET /sources/scim_users/
--
-- SCIMSourceUser Viewset
sourcesScimUsersList ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  SourcesScimUsersListParameters ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response SourcesScimUsersListResponse)
sourcesScimUsersList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either SourcesScimUsersListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   SourcesScimUsersListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PaginatedSCIMSourceUserList
                                                      )
                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   SourcesScimUsersListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ValidationError
                                                      )
                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                   SourcesScimUsersListResponse403
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
        "/sources/scim_users/"
        [ AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "ordering") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesScimUsersListParametersQueryOrdering parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesScimUsersListParametersQueryPage parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesScimUsersListParametersQueryPageSize parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "search") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesScimUsersListParametersQuerySearch parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "source__slug") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesScimUsersListParametersQuerySource_Slug parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "user__id") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesScimUsersListParametersQueryUser_Id parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "user__username") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesScimUsersListParametersQueryUser_Username parameters) (Data.Text.Internal.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sources\/scim_users\/.GET.parameters@ in the specification.
data SourcesScimUsersListParameters = SourcesScimUsersListParameters
  { -- | queryOrdering: Represents the parameter named \'ordering\'
    --
    -- Which field to use when ordering the results.
    sourcesScimUsersListParametersQueryOrdering :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPage: Represents the parameter named \'page\'
    --
    -- A page number within the paginated result set.
    sourcesScimUsersListParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPage_size: Represents the parameter named \'page_size\'
    --
    -- Number of results to return per page.
    sourcesScimUsersListParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | querySearch: Represents the parameter named \'search\'
    --
    -- A search term.
    sourcesScimUsersListParametersQuerySearch :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | querySource__slug: Represents the parameter named \'source__slug\'
    sourcesScimUsersListParametersQuerySource_Slug :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryUser__id: Represents the parameter named \'user__id\'
    sourcesScimUsersListParametersQueryUser_Id :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryUser__username: Represents the parameter named \'user__username\'
    sourcesScimUsersListParametersQueryUser_Username :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourcesScimUsersListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQuerySearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySource__slug" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQuerySource_Slug obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryUser__id" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQueryUser_Id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryUser__username" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQueryUser_Username obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQuerySearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySource__slug" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQuerySource_Slug obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryUser__id" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQueryUser_Id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryUser__username" Data.Aeson.Types.ToJSON..=)) (sourcesScimUsersListParametersQueryUser_Username obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SourcesScimUsersListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourcesScimUsersListParameters" (\obj -> ((((((GHC.Base.pure SourcesScimUsersListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrdering")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySearch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySource__slug")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryUser__id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryUser__username"))

-- | Create a new 'SourcesScimUsersListParameters' with all required fields.
mkSourcesScimUsersListParameters :: SourcesScimUsersListParameters
mkSourcesScimUsersListParameters =
  SourcesScimUsersListParameters
    { sourcesScimUsersListParametersQueryOrdering = GHC.Maybe.Nothing,
      sourcesScimUsersListParametersQueryPage = GHC.Maybe.Nothing,
      sourcesScimUsersListParametersQueryPageSize = GHC.Maybe.Nothing,
      sourcesScimUsersListParametersQuerySearch = GHC.Maybe.Nothing,
      sourcesScimUsersListParametersQuerySource_Slug = GHC.Maybe.Nothing,
      sourcesScimUsersListParametersQueryUser_Id = GHC.Maybe.Nothing,
      sourcesScimUsersListParametersQueryUser_Username = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'sourcesScimUsersList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'SourcesScimUsersListResponseError' is used.
data SourcesScimUsersListResponse
  = -- | Means either no matching case available or a parse error
    SourcesScimUsersListResponseError GHC.Base.String
  | SourcesScimUsersListResponse200 PaginatedSCIMSourceUserList
  | SourcesScimUsersListResponse400 ValidationError
  | SourcesScimUsersListResponse403 GenericError
  deriving (GHC.Show.Show, GHC.Classes.Eq)
