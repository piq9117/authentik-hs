{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation propertymappingsProviderRadiusList
module AuthentikAPI.Operations.PropertymappingsProviderRadiusList where

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

-- | > GET /propertymappings/provider/radius/
--
-- RadiusProviderPropertyMapping Viewset
propertymappingsProviderRadiusList ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PropertymappingsProviderRadiusListParameters ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PropertymappingsProviderRadiusListResponse)
propertymappingsProviderRadiusList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PropertymappingsProviderRadiusListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PropertymappingsProviderRadiusListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PaginatedRadiusProviderPropertyMappingList
                                                      )
                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PropertymappingsProviderRadiusListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ValidationError
                                                      )
                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PropertymappingsProviderRadiusListResponse403
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
        "/propertymappings/provider/radius/"
        [ AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "managed") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsProviderRadiusListParametersQueryManaged parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "managed__isnull") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsProviderRadiusListParametersQueryManaged_Isnull parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "name") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsProviderRadiusListParametersQueryName parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "ordering") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsProviderRadiusListParametersQueryOrdering parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsProviderRadiusListParametersQueryPage parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsProviderRadiusListParametersQueryPageSize parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "search") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> propertymappingsProviderRadiusListParametersQuerySearch parameters) (Data.Text.Internal.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/propertymappings\/provider\/radius\/.GET.parameters@ in the specification.
data PropertymappingsProviderRadiusListParameters = PropertymappingsProviderRadiusListParameters
  { -- | queryManaged: Represents the parameter named \'managed\'
    propertymappingsProviderRadiusListParametersQueryManaged :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | queryManaged__isnull: Represents the parameter named \'managed__isnull\'
    propertymappingsProviderRadiusListParametersQueryManaged_Isnull :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryName: Represents the parameter named \'name\'
    propertymappingsProviderRadiusListParametersQueryName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryOrdering: Represents the parameter named \'ordering\'
    --
    -- Which field to use when ordering the results.
    propertymappingsProviderRadiusListParametersQueryOrdering :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPage: Represents the parameter named \'page\'
    --
    -- A page number within the paginated result set.
    propertymappingsProviderRadiusListParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPage_size: Represents the parameter named \'page_size\'
    --
    -- Number of results to return per page.
    propertymappingsProviderRadiusListParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | querySearch: Represents the parameter named \'search\'
    --
    -- A search term.
    propertymappingsProviderRadiusListParametersQuerySearch :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PropertymappingsProviderRadiusListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryManaged" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQueryManaged obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryManaged__isnull" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQueryManaged_Isnull obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQuerySearch obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryManaged" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQueryManaged obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryManaged__isnull" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQueryManaged_Isnull obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (propertymappingsProviderRadiusListParametersQuerySearch obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PropertymappingsProviderRadiusListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PropertymappingsProviderRadiusListParameters" (\obj -> ((((((GHC.Base.pure PropertymappingsProviderRadiusListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryManaged")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryManaged__isnull")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrdering")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySearch"))

-- | Create a new 'PropertymappingsProviderRadiusListParameters' with all required fields.
mkPropertymappingsProviderRadiusListParameters :: PropertymappingsProviderRadiusListParameters
mkPropertymappingsProviderRadiusListParameters =
  PropertymappingsProviderRadiusListParameters
    { propertymappingsProviderRadiusListParametersQueryManaged = GHC.Maybe.Nothing,
      propertymappingsProviderRadiusListParametersQueryManaged_Isnull = GHC.Maybe.Nothing,
      propertymappingsProviderRadiusListParametersQueryName = GHC.Maybe.Nothing,
      propertymappingsProviderRadiusListParametersQueryOrdering = GHC.Maybe.Nothing,
      propertymappingsProviderRadiusListParametersQueryPage = GHC.Maybe.Nothing,
      propertymappingsProviderRadiusListParametersQueryPageSize = GHC.Maybe.Nothing,
      propertymappingsProviderRadiusListParametersQuerySearch = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'propertymappingsProviderRadiusList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PropertymappingsProviderRadiusListResponseError' is used.
data PropertymappingsProviderRadiusListResponse
  = -- | Means either no matching case available or a parse error
    PropertymappingsProviderRadiusListResponseError GHC.Base.String
  | PropertymappingsProviderRadiusListResponse200 PaginatedRadiusProviderPropertyMappingList
  | PropertymappingsProviderRadiusListResponse400 ValidationError
  | PropertymappingsProviderRadiusListResponse403 GenericError
  deriving (GHC.Show.Show, GHC.Classes.Eq)
