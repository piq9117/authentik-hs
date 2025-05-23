{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation cryptoCertificatekeypairsList
module AuthentikAPI.Operations.CryptoCertificatekeypairsList where

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

-- | > GET /crypto/certificatekeypairs/
--
-- CertificateKeyPair Viewset
cryptoCertificatekeypairsList ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  CryptoCertificatekeypairsListParameters ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response CryptoCertificatekeypairsListResponse)
cryptoCertificatekeypairsList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either CryptoCertificatekeypairsListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   CryptoCertificatekeypairsListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PaginatedCertificateKeyPairList
                                                      )
                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   CryptoCertificatekeypairsListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ValidationError
                                                      )
                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                   CryptoCertificatekeypairsListResponse403
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
        "/crypto/certificatekeypairs/"
        [ AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "has_key") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> cryptoCertificatekeypairsListParametersQueryHasKey parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "include_details") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> cryptoCertificatekeypairsListParametersQueryIncludeDetails parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "managed") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> cryptoCertificatekeypairsListParametersQueryManaged parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "name") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> cryptoCertificatekeypairsListParametersQueryName parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "ordering") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> cryptoCertificatekeypairsListParametersQueryOrdering parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> cryptoCertificatekeypairsListParametersQueryPage parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> cryptoCertificatekeypairsListParametersQueryPageSize parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "search") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> cryptoCertificatekeypairsListParametersQuerySearch parameters) (Data.Text.Internal.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/crypto\/certificatekeypairs\/.GET.parameters@ in the specification.
data CryptoCertificatekeypairsListParameters = CryptoCertificatekeypairsListParameters
  { -- | queryHas_key: Represents the parameter named \'has_key\'
    --
    -- Only return certificate-key pairs with keys
    cryptoCertificatekeypairsListParametersQueryHasKey :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryInclude_details: Represents the parameter named \'include_details\'
    cryptoCertificatekeypairsListParametersQueryIncludeDetails :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryManaged: Represents the parameter named \'managed\'
    cryptoCertificatekeypairsListParametersQueryManaged :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryName: Represents the parameter named \'name\'
    cryptoCertificatekeypairsListParametersQueryName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryOrdering: Represents the parameter named \'ordering\'
    --
    -- Which field to use when ordering the results.
    cryptoCertificatekeypairsListParametersQueryOrdering :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPage: Represents the parameter named \'page\'
    --
    -- A page number within the paginated result set.
    cryptoCertificatekeypairsListParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPage_size: Represents the parameter named \'page_size\'
    --
    -- Number of results to return per page.
    cryptoCertificatekeypairsListParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | querySearch: Represents the parameter named \'search\'
    --
    -- A search term.
    cryptoCertificatekeypairsListParametersQuerySearch :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CryptoCertificatekeypairsListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryHas_key" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryHasKey obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryInclude_details" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryIncludeDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryManaged" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryManaged obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQuerySearch obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryHas_key" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryHasKey obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryInclude_details" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryIncludeDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryManaged" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryManaged obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (cryptoCertificatekeypairsListParametersQuerySearch obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON CryptoCertificatekeypairsListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CryptoCertificatekeypairsListParameters" (\obj -> (((((((GHC.Base.pure CryptoCertificatekeypairsListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryHas_key")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryInclude_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryManaged")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrdering")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySearch"))

-- | Create a new 'CryptoCertificatekeypairsListParameters' with all required fields.
mkCryptoCertificatekeypairsListParameters :: CryptoCertificatekeypairsListParameters
mkCryptoCertificatekeypairsListParameters =
  CryptoCertificatekeypairsListParameters
    { cryptoCertificatekeypairsListParametersQueryHasKey = GHC.Maybe.Nothing,
      cryptoCertificatekeypairsListParametersQueryIncludeDetails = GHC.Maybe.Nothing,
      cryptoCertificatekeypairsListParametersQueryManaged = GHC.Maybe.Nothing,
      cryptoCertificatekeypairsListParametersQueryName = GHC.Maybe.Nothing,
      cryptoCertificatekeypairsListParametersQueryOrdering = GHC.Maybe.Nothing,
      cryptoCertificatekeypairsListParametersQueryPage = GHC.Maybe.Nothing,
      cryptoCertificatekeypairsListParametersQueryPageSize = GHC.Maybe.Nothing,
      cryptoCertificatekeypairsListParametersQuerySearch = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'cryptoCertificatekeypairsList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'CryptoCertificatekeypairsListResponseError' is used.
data CryptoCertificatekeypairsListResponse
  = -- | Means either no matching case available or a parse error
    CryptoCertificatekeypairsListResponseError GHC.Base.String
  | CryptoCertificatekeypairsListResponse200 PaginatedCertificateKeyPairList
  | CryptoCertificatekeypairsListResponse400 ValidationError
  | CryptoCertificatekeypairsListResponse403 GenericError
  deriving (GHC.Show.Show, GHC.Classes.Eq)
