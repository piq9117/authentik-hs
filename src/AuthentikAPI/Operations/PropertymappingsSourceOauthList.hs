{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation propertymappingsSourceOauthList
module AuthentikAPI.Operations.PropertymappingsSourceOauthList where

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

-- | > GET /propertymappings/source/oauth/
--
-- OAuthSourcePropertyMapping Viewset
propertymappingsSourceOauthList ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PropertymappingsSourceOauthListParameters ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PropertymappingsSourceOauthListResponse)
propertymappingsSourceOauthList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PropertymappingsSourceOauthListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PropertymappingsSourceOauthListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PaginatedOAuthSourcePropertyMappingList
                                                      )
                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PropertymappingsSourceOauthListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ValidationError
                                                      )
                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PropertymappingsSourceOauthListResponse403
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
        "/propertymappings/source/oauth/"
        [ AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "managed") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsSourceOauthListParametersQueryManaged parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "managed__isnull") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsSourceOauthListParametersQueryManaged_Isnull parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "name") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsSourceOauthListParametersQueryName parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "ordering") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsSourceOauthListParametersQueryOrdering parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsSourceOauthListParametersQueryPage parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsSourceOauthListParametersQueryPageSize parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "search") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsSourceOauthListParametersQuerySearch parameters) (Data.Text.Internal.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/propertymappings\/source\/oauth\/.GET.parameters@ in the specification.
data PropertymappingsSourceOauthListParameters = PropertymappingsSourceOauthListParameters
  { -- | queryManaged: Represents the parameter named \'managed\'
    propertymappingsSourceOauthListParametersQueryManaged :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | queryManaged__isnull: Represents the parameter named \'managed__isnull\'
    propertymappingsSourceOauthListParametersQueryManaged_Isnull :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryName: Represents the parameter named \'name\'
    propertymappingsSourceOauthListParametersQueryName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryOrdering: Represents the parameter named \'ordering\'
    --
    -- Which field to use when ordering the results.
    propertymappingsSourceOauthListParametersQueryOrdering :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPage: Represents the parameter named \'page\'
    --
    -- A page number within the paginated result set.
    propertymappingsSourceOauthListParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPage_size: Represents the parameter named \'page_size\'
    --
    -- Number of results to return per page.
    propertymappingsSourceOauthListParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | querySearch: Represents the parameter named \'search\'
    --
    -- A search term.
    propertymappingsSourceOauthListParametersQuerySearch :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PropertymappingsSourceOauthListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryManaged" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQueryManaged obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryManaged__isnull" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQueryManaged_Isnull obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQuerySearch obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryManaged" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQueryManaged obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryManaged__isnull" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQueryManaged_Isnull obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (propertymappingsSourceOauthListParametersQuerySearch obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PropertymappingsSourceOauthListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PropertymappingsSourceOauthListParameters" (\obj -> ((((((GHC.Base.pure PropertymappingsSourceOauthListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryManaged")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryManaged__isnull")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrdering")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySearch"))

-- | Create a new 'PropertymappingsSourceOauthListParameters' with all required fields.
mkPropertymappingsSourceOauthListParameters :: PropertymappingsSourceOauthListParameters
mkPropertymappingsSourceOauthListParameters =
  PropertymappingsSourceOauthListParameters
    { propertymappingsSourceOauthListParametersQueryManaged = GHC.Maybe.Nothing,
      propertymappingsSourceOauthListParametersQueryManaged_Isnull = GHC.Maybe.Nothing,
      propertymappingsSourceOauthListParametersQueryName = GHC.Maybe.Nothing,
      propertymappingsSourceOauthListParametersQueryOrdering = GHC.Maybe.Nothing,
      propertymappingsSourceOauthListParametersQueryPage = GHC.Maybe.Nothing,
      propertymappingsSourceOauthListParametersQueryPageSize = GHC.Maybe.Nothing,
      propertymappingsSourceOauthListParametersQuerySearch = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'propertymappingsSourceOauthList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PropertymappingsSourceOauthListResponseError' is used.
data PropertymappingsSourceOauthListResponse
  = -- | Means either no matching case available or a parse error
    PropertymappingsSourceOauthListResponseError GHC.Base.String
  | PropertymappingsSourceOauthListResponse200 PaginatedOAuthSourcePropertyMappingList
  | PropertymappingsSourceOauthListResponse400 ValidationError
  | PropertymappingsSourceOauthListResponse403 GenericError
  deriving (GHC.Show.Show, GHC.Classes.Eq)
