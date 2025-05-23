{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation policiesUniquePasswordList
module AuthentikAPI.Operations.PoliciesUniquePasswordList where

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

-- | > GET /policies/unique_password/
--
-- Password Uniqueness Policy Viewset
policiesUniquePasswordList ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PoliciesUniquePasswordListParameters ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PoliciesUniquePasswordListResponse)
policiesUniquePasswordList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PoliciesUniquePasswordListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PoliciesUniquePasswordListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PaginatedUniquePasswordPolicyList
                                                      )
                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PoliciesUniquePasswordListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ValidationError
                                                      )
                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PoliciesUniquePasswordListResponse403
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
        "/policies/unique_password/"
        [ AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesUniquePasswordListParametersQueryCreated parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "execution_logging") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesUniquePasswordListParametersQueryExecutionLogging parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "last_updated") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesUniquePasswordListParametersQueryLastUpdated parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "name") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesUniquePasswordListParametersQueryName parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "num_historical_passwords") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesUniquePasswordListParametersQueryNumHistoricalPasswords parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "ordering") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesUniquePasswordListParametersQueryOrdering parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesUniquePasswordListParametersQueryPage parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesUniquePasswordListParametersQueryPageSize parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "password_field") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesUniquePasswordListParametersQueryPasswordField parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "policy_uuid") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesUniquePasswordListParametersQueryPolicyUuid parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "search") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> policiesUniquePasswordListParametersQuerySearch parameters) (Data.Text.Internal.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/policies\/unique_password\/.GET.parameters@ in the specification.
data PoliciesUniquePasswordListParameters = PoliciesUniquePasswordListParameters
  { -- | queryCreated: Represents the parameter named \'created\'
    policiesUniquePasswordListParametersQueryCreated :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExecution_logging: Represents the parameter named \'execution_logging\'
    policiesUniquePasswordListParametersQueryExecutionLogging :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryLast_updated: Represents the parameter named \'last_updated\'
    policiesUniquePasswordListParametersQueryLastUpdated :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryName: Represents the parameter named \'name\'
    policiesUniquePasswordListParametersQueryName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryNum_historical_passwords: Represents the parameter named \'num_historical_passwords\'
    policiesUniquePasswordListParametersQueryNumHistoricalPasswords :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryOrdering: Represents the parameter named \'ordering\'
    --
    -- Which field to use when ordering the results.
    policiesUniquePasswordListParametersQueryOrdering :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPage: Represents the parameter named \'page\'
    --
    -- A page number within the paginated result set.
    policiesUniquePasswordListParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPage_size: Represents the parameter named \'page_size\'
    --
    -- Number of results to return per page.
    policiesUniquePasswordListParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPassword_field: Represents the parameter named \'password_field\'
    policiesUniquePasswordListParametersQueryPasswordField :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPolicy_uuid: Represents the parameter named \'policy_uuid\'
    policiesUniquePasswordListParametersQueryPolicyUuid :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | querySearch: Represents the parameter named \'search\'
    --
    -- A search term.
    policiesUniquePasswordListParametersQuerySearch :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PoliciesUniquePasswordListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExecution_logging" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryExecutionLogging obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLast_updated" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryLastUpdated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryNum_historical_passwords" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryNumHistoricalPasswords obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPassword_field" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryPasswordField obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPolicy_uuid" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryPolicyUuid obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQuerySearch obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExecution_logging" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryExecutionLogging obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLast_updated" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryLastUpdated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryNum_historical_passwords" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryNumHistoricalPasswords obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPassword_field" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryPasswordField obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPolicy_uuid" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQueryPolicyUuid obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (policiesUniquePasswordListParametersQuerySearch obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PoliciesUniquePasswordListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PoliciesUniquePasswordListParameters" (\obj -> ((((((((((GHC.Base.pure PoliciesUniquePasswordListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExecution_logging")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLast_updated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryNum_historical_passwords")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrdering")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPassword_field")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPolicy_uuid")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySearch"))

-- | Create a new 'PoliciesUniquePasswordListParameters' with all required fields.
mkPoliciesUniquePasswordListParameters :: PoliciesUniquePasswordListParameters
mkPoliciesUniquePasswordListParameters =
  PoliciesUniquePasswordListParameters
    { policiesUniquePasswordListParametersQueryCreated = GHC.Maybe.Nothing,
      policiesUniquePasswordListParametersQueryExecutionLogging = GHC.Maybe.Nothing,
      policiesUniquePasswordListParametersQueryLastUpdated = GHC.Maybe.Nothing,
      policiesUniquePasswordListParametersQueryName = GHC.Maybe.Nothing,
      policiesUniquePasswordListParametersQueryNumHistoricalPasswords = GHC.Maybe.Nothing,
      policiesUniquePasswordListParametersQueryOrdering = GHC.Maybe.Nothing,
      policiesUniquePasswordListParametersQueryPage = GHC.Maybe.Nothing,
      policiesUniquePasswordListParametersQueryPageSize = GHC.Maybe.Nothing,
      policiesUniquePasswordListParametersQueryPasswordField = GHC.Maybe.Nothing,
      policiesUniquePasswordListParametersQueryPolicyUuid = GHC.Maybe.Nothing,
      policiesUniquePasswordListParametersQuerySearch = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'policiesUniquePasswordList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PoliciesUniquePasswordListResponseError' is used.
data PoliciesUniquePasswordListResponse
  = -- | Means either no matching case available or a parse error
    PoliciesUniquePasswordListResponseError GHC.Base.String
  | PoliciesUniquePasswordListResponse200 PaginatedUniquePasswordPolicyList
  | PoliciesUniquePasswordListResponse400 ValidationError
  | PoliciesUniquePasswordListResponse403 GenericError
  deriving (GHC.Show.Show, GHC.Classes.Eq)
