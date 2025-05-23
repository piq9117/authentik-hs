{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation policiesReputationScoresList
module AuthentikAPI.Operations.PoliciesReputationScoresList where

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

-- | > GET /policies/reputation/scores/
--
-- Reputation Viewset
policiesReputationScoresList ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PoliciesReputationScoresListParameters ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PoliciesReputationScoresListResponse)
policiesReputationScoresList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PoliciesReputationScoresListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PoliciesReputationScoresListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PaginatedReputationList
                                                      )
                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PoliciesReputationScoresListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ValidationError
                                                      )
                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PoliciesReputationScoresListResponse403
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
        "/policies/reputation/scores/"
        [ AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "identifier") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesReputationScoresListParametersQueryIdentifier parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "identifier_in") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesReputationScoresListParametersQueryIdentifierIn parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "ip") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesReputationScoresListParametersQueryIp parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "ordering") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesReputationScoresListParametersQueryOrdering parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesReputationScoresListParametersQueryPage parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesReputationScoresListParametersQueryPageSize parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "score") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesReputationScoresListParametersQueryScore parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "search") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesReputationScoresListParametersQuerySearch parameters) (Data.Text.Internal.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/policies\/reputation\/scores\/.GET.parameters@ in the specification.
data PoliciesReputationScoresListParameters = PoliciesReputationScoresListParameters
  { -- | queryIdentifier: Represents the parameter named \'identifier\'
    policiesReputationScoresListParametersQueryIdentifier :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryIdentifier_in: Represents the parameter named \'identifier_in\'
    --
    -- Multiple values may be separated by commas.
    policiesReputationScoresListParametersQueryIdentifierIn :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | queryIp: Represents the parameter named \'ip\'
    policiesReputationScoresListParametersQueryIp :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryOrdering: Represents the parameter named \'ordering\'
    --
    -- Which field to use when ordering the results.
    policiesReputationScoresListParametersQueryOrdering :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPage: Represents the parameter named \'page\'
    --
    -- A page number within the paginated result set.
    policiesReputationScoresListParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPage_size: Represents the parameter named \'page_size\'
    --
    -- Number of results to return per page.
    policiesReputationScoresListParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryScore: Represents the parameter named \'score\'
    policiesReputationScoresListParametersQueryScore :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | querySearch: Represents the parameter named \'search\'
    --
    -- A search term.
    policiesReputationScoresListParametersQuerySearch :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PoliciesReputationScoresListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIdentifier" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryIdentifier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIdentifier_in" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryIdentifierIn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIp" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryIp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryScore" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryScore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQuerySearch obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIdentifier" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryIdentifier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIdentifier_in" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryIdentifierIn obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIp" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryIp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryScore" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQueryScore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (policiesReputationScoresListParametersQuerySearch obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PoliciesReputationScoresListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PoliciesReputationScoresListParameters" (\obj -> (((((((GHC.Base.pure PoliciesReputationScoresListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryIdentifier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryIdentifier_in")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryIp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrdering")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryScore")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySearch"))

-- | Create a new 'PoliciesReputationScoresListParameters' with all required fields.
mkPoliciesReputationScoresListParameters :: PoliciesReputationScoresListParameters
mkPoliciesReputationScoresListParameters =
  PoliciesReputationScoresListParameters
    { policiesReputationScoresListParametersQueryIdentifier = GHC.Maybe.Nothing,
      policiesReputationScoresListParametersQueryIdentifierIn = GHC.Maybe.Nothing,
      policiesReputationScoresListParametersQueryIp = GHC.Maybe.Nothing,
      policiesReputationScoresListParametersQueryOrdering = GHC.Maybe.Nothing,
      policiesReputationScoresListParametersQueryPage = GHC.Maybe.Nothing,
      policiesReputationScoresListParametersQueryPageSize = GHC.Maybe.Nothing,
      policiesReputationScoresListParametersQueryScore = GHC.Maybe.Nothing,
      policiesReputationScoresListParametersQuerySearch = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'policiesReputationScoresList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PoliciesReputationScoresListResponseError' is used.
data PoliciesReputationScoresListResponse
  = -- | Means either no matching case available or a parse error
    PoliciesReputationScoresListResponseError GHC.Base.String
  | PoliciesReputationScoresListResponse200 PaginatedReputationList
  | PoliciesReputationScoresListResponse400 ValidationError
  | PoliciesReputationScoresListResponse403 GenericError
  deriving (GHC.Show.Show, GHC.Classes.Eq)
