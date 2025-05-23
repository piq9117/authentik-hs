{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation coreGroupsList
module AuthentikAPI.Operations.CoreGroupsList where

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

-- | > GET /core/groups/
--
-- Group Viewset
coreGroupsList ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  CoreGroupsListParameters ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response CoreGroupsListResponse)
coreGroupsList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either CoreGroupsListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   CoreGroupsListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PaginatedGroupList
                                                      )
                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   CoreGroupsListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ValidationError
                                                      )
                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                   CoreGroupsListResponse403
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
        "/core/groups/"
        [ AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "attributes") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> coreGroupsListParametersQueryAttributes parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "include_users") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> coreGroupsListParametersQueryIncludeUsers parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "is_superuser") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> coreGroupsListParametersQueryIsSuperuser parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "members_by_pk") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> coreGroupsListParametersQueryMembersByPk parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "members_by_username") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> coreGroupsListParametersQueryMembersByUsername parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "name") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> coreGroupsListParametersQueryName parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "ordering") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> coreGroupsListParametersQueryOrdering parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> coreGroupsListParametersQueryPage parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> coreGroupsListParametersQueryPageSize parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "search") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> coreGroupsListParametersQuerySearch parameters) (Data.Text.Internal.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/core\/groups\/.GET.parameters@ in the specification.
data CoreGroupsListParameters = CoreGroupsListParameters
  { -- | queryAttributes: Represents the parameter named \'attributes\'
    --
    -- Attributes
    coreGroupsListParametersQueryAttributes :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryInclude_users: Represents the parameter named \'include_users\'
    coreGroupsListParametersQueryIncludeUsers :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryIs_superuser: Represents the parameter named \'is_superuser\'
    coreGroupsListParametersQueryIsSuperuser :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryMembers_by_pk: Represents the parameter named \'members_by_pk\'
    coreGroupsListParametersQueryMembersByPk :: (GHC.Maybe.Maybe [GHC.Types.Int]),
    -- | queryMembers_by_username: Represents the parameter named \'members_by_username\'
    --
    -- Required. 150 characters or fewer. Letters, digits and \@\/.\/+\/-\/_ only.
    coreGroupsListParametersQueryMembersByUsername :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | queryName: Represents the parameter named \'name\'
    coreGroupsListParametersQueryName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryOrdering: Represents the parameter named \'ordering\'
    --
    -- Which field to use when ordering the results.
    coreGroupsListParametersQueryOrdering :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPage: Represents the parameter named \'page\'
    --
    -- A page number within the paginated result set.
    coreGroupsListParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPage_size: Represents the parameter named \'page_size\'
    --
    -- Number of results to return per page.
    coreGroupsListParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | querySearch: Represents the parameter named \'search\'
    --
    -- A search term.
    coreGroupsListParametersQuerySearch :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CoreGroupsListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAttributes" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryAttributes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryInclude_users" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryIncludeUsers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIs_superuser" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryIsSuperuser obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryMembers_by_pk" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryMembersByPk obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryMembers_by_username" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryMembersByUsername obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQuerySearch obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAttributes" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryAttributes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryInclude_users" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryIncludeUsers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIs_superuser" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryIsSuperuser obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryMembers_by_pk" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryMembersByPk obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryMembers_by_username" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryMembersByUsername obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (coreGroupsListParametersQuerySearch obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON CoreGroupsListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CoreGroupsListParameters" (\obj -> (((((((((GHC.Base.pure CoreGroupsListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAttributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryInclude_users")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryIs_superuser")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryMembers_by_pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryMembers_by_username")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrdering")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySearch"))

-- | Create a new 'CoreGroupsListParameters' with all required fields.
mkCoreGroupsListParameters :: CoreGroupsListParameters
mkCoreGroupsListParameters =
  CoreGroupsListParameters
    { coreGroupsListParametersQueryAttributes = GHC.Maybe.Nothing,
      coreGroupsListParametersQueryIncludeUsers = GHC.Maybe.Nothing,
      coreGroupsListParametersQueryIsSuperuser = GHC.Maybe.Nothing,
      coreGroupsListParametersQueryMembersByPk = GHC.Maybe.Nothing,
      coreGroupsListParametersQueryMembersByUsername = GHC.Maybe.Nothing,
      coreGroupsListParametersQueryName = GHC.Maybe.Nothing,
      coreGroupsListParametersQueryOrdering = GHC.Maybe.Nothing,
      coreGroupsListParametersQueryPage = GHC.Maybe.Nothing,
      coreGroupsListParametersQueryPageSize = GHC.Maybe.Nothing,
      coreGroupsListParametersQuerySearch = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'coreGroupsList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'CoreGroupsListResponseError' is used.
data CoreGroupsListResponse
  = -- | Means either no matching case available or a parse error
    CoreGroupsListResponseError GHC.Base.String
  | CoreGroupsListResponse200 PaginatedGroupList
  | CoreGroupsListResponse400 ValidationError
  | CoreGroupsListResponse403 GenericError
  deriving (GHC.Show.Show, GHC.Classes.Eq)
