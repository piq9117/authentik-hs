{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation sourcesOauthList
module AuthentikAPI.Operations.SourcesOauthList where

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

-- | > GET /sources/oauth/
--
-- Source Viewset
sourcesOauthList ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  SourcesOauthListParameters ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response SourcesOauthListResponse)
sourcesOauthList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either SourcesOauthListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   SourcesOauthListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            PaginatedOAuthSourceList
                                                      )
                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   SourcesOauthListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ValidationError
                                                      )
                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                   SourcesOauthListResponse403
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
        "/sources/oauth/"
        [ AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "access_token_url") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryAccessTokenUrl parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "additional_scopes") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryAdditionalScopes parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "authentication_flow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryAuthenticationFlow parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "authorization_url") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryAuthorizationUrl parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "consumer_key") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryConsumerKey parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "enabled") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryEnabled parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "enrollment_flow") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryEnrollmentFlow parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "group_matching_mode") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryGroupMatchingMode parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "has_jwks") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryHasJwks parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "name") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryName parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "ordering") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryOrdering parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryPage parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryPageSize parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "pbm_uuid") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryPbmUuid parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "policy_engine_mode") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryPolicyEngineMode parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "profile_url") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryProfileUrl parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "provider_type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryProviderType parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "request_token_url") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryRequestTokenUrl parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "search") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQuerySearch parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "slug") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQuerySlug parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "user_matching_mode") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> sourcesOauthListParametersQueryUserMatchingMode parameters) (Data.Text.Internal.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/sources\/oauth\/.GET.parameters@ in the specification.
data SourcesOauthListParameters = SourcesOauthListParameters
  { -- | queryAccess_token_url: Represents the parameter named \'access_token_url\'
    sourcesOauthListParametersQueryAccessTokenUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryAdditional_scopes: Represents the parameter named \'additional_scopes\'
    sourcesOauthListParametersQueryAdditionalScopes :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryAuthentication_flow: Represents the parameter named \'authentication_flow\'
    sourcesOauthListParametersQueryAuthenticationFlow :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryAuthorization_url: Represents the parameter named \'authorization_url\'
    sourcesOauthListParametersQueryAuthorizationUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryConsumer_key: Represents the parameter named \'consumer_key\'
    sourcesOauthListParametersQueryConsumerKey :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryEnabled: Represents the parameter named \'enabled\'
    sourcesOauthListParametersQueryEnabled :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryEnrollment_flow: Represents the parameter named \'enrollment_flow\'
    sourcesOauthListParametersQueryEnrollmentFlow :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryGroup_matching_mode: Represents the parameter named \'group_matching_mode\'
    --
    -- How the source determines if an existing group should be used or a new group created.
    sourcesOauthListParametersQueryGroupMatchingMode :: (GHC.Maybe.Maybe SourcesOauthListParametersQueryGroupMatchingMode'),
    -- | queryHas_jwks: Represents the parameter named \'has_jwks\'
    --
    -- Only return sources with JWKS data
    sourcesOauthListParametersQueryHasJwks :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryName: Represents the parameter named \'name\'
    sourcesOauthListParametersQueryName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryOrdering: Represents the parameter named \'ordering\'
    --
    -- Which field to use when ordering the results.
    sourcesOauthListParametersQueryOrdering :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPage: Represents the parameter named \'page\'
    --
    -- A page number within the paginated result set.
    sourcesOauthListParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPage_size: Represents the parameter named \'page_size\'
    --
    -- Number of results to return per page.
    sourcesOauthListParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryPbm_uuid: Represents the parameter named \'pbm_uuid\'
    sourcesOauthListParametersQueryPbmUuid :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryPolicy_engine_mode: Represents the parameter named \'policy_engine_mode\'
    sourcesOauthListParametersQueryPolicyEngineMode :: (GHC.Maybe.Maybe SourcesOauthListParametersQueryPolicyEngineMode'),
    -- | queryProfile_url: Represents the parameter named \'profile_url\'
    sourcesOauthListParametersQueryProfileUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryProvider_type: Represents the parameter named \'provider_type\'
    sourcesOauthListParametersQueryProviderType :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryRequest_token_url: Represents the parameter named \'request_token_url\'
    sourcesOauthListParametersQueryRequestTokenUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | querySearch: Represents the parameter named \'search\'
    --
    -- A search term.
    sourcesOauthListParametersQuerySearch :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | querySlug: Represents the parameter named \'slug\'
    sourcesOauthListParametersQuerySlug :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryUser_matching_mode: Represents the parameter named \'user_matching_mode\'
    --
    -- How the source determines if an existing user should be authenticated or a new user enrolled.
    sourcesOauthListParametersQueryUserMatchingMode :: (GHC.Maybe.Maybe SourcesOauthListParametersQueryUserMatchingMode')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourcesOauthListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAccess_token_url" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryAccessTokenUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAdditional_scopes" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryAdditionalScopes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAuthentication_flow" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryAuthenticationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAuthorization_url" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryAuthorizationUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryConsumer_key" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryConsumerKey obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnabled" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnrollment_flow" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryEnrollmentFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryGroup_matching_mode" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryGroupMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryHas_jwks" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryHasJwks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPbm_uuid" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryPbmUuid obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPolicy_engine_mode" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryPolicyEngineMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryProfile_url" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryProfileUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryProvider_type" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryProviderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRequest_token_url" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryRequestTokenUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQuerySearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySlug" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQuerySlug obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryUser_matching_mode" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryUserMatchingMode obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAccess_token_url" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryAccessTokenUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAdditional_scopes" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryAdditionalScopes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAuthentication_flow" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryAuthenticationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryAuthorization_url" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryAuthorizationUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryConsumer_key" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryConsumerKey obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnabled" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryEnabled obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnrollment_flow" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryEnrollmentFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryGroup_matching_mode" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryGroupMatchingMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryHas_jwks" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryHasJwks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryName" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage_size" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryPageSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPbm_uuid" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryPbmUuid obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPolicy_engine_mode" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryPolicyEngineMode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryProfile_url" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryProfileUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryProvider_type" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryProviderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryRequest_token_url" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryRequestTokenUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQuerySearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySlug" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQuerySlug obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryUser_matching_mode" Data.Aeson.Types.ToJSON..=)) (sourcesOauthListParametersQueryUserMatchingMode obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SourcesOauthListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourcesOauthListParameters" (\obj -> ((((((((((((((((((((GHC.Base.pure SourcesOauthListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAccess_token_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAdditional_scopes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAuthentication_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryAuthorization_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryConsumer_key")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnrollment_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryGroup_matching_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryHas_jwks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrdering")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPbm_uuid")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPolicy_engine_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryProfile_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryProvider_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryRequest_token_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySearch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySlug")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryUser_matching_mode"))

-- | Create a new 'SourcesOauthListParameters' with all required fields.
mkSourcesOauthListParameters :: SourcesOauthListParameters
mkSourcesOauthListParameters =
  SourcesOauthListParameters
    { sourcesOauthListParametersQueryAccessTokenUrl = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryAdditionalScopes = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryAuthenticationFlow = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryAuthorizationUrl = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryConsumerKey = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryEnabled = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryEnrollmentFlow = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryGroupMatchingMode = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryHasJwks = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryName = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryOrdering = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryPage = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryPageSize = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryPbmUuid = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryPolicyEngineMode = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryProfileUrl = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryProviderType = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryRequestTokenUrl = GHC.Maybe.Nothing,
      sourcesOauthListParametersQuerySearch = GHC.Maybe.Nothing,
      sourcesOauthListParametersQuerySlug = GHC.Maybe.Nothing,
      sourcesOauthListParametersQueryUserMatchingMode = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/sources\/oauth\/.GET.parameters.properties.queryGroup_matching_mode@ in the specification.
--
-- Represents the parameter named \'group_matching_mode\'
--
-- How the source determines if an existing group should be used or a new group created.
data SourcesOauthListParametersQueryGroupMatchingMode'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SourcesOauthListParametersQueryGroupMatchingMode'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SourcesOauthListParametersQueryGroupMatchingMode'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"identifier"@
    SourcesOauthListParametersQueryGroupMatchingMode'EnumIdentifier
  | -- | Represents the JSON value @"name_deny"@
    SourcesOauthListParametersQueryGroupMatchingMode'EnumNameDeny
  | -- | Represents the JSON value @"name_link"@
    SourcesOauthListParametersQueryGroupMatchingMode'EnumNameLink
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SourcesOauthListParametersQueryGroupMatchingMode' where
  toJSON (SourcesOauthListParametersQueryGroupMatchingMode'Other val) = val
  toJSON (SourcesOauthListParametersQueryGroupMatchingMode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SourcesOauthListParametersQueryGroupMatchingMode'EnumIdentifier) = "identifier"
  toJSON (SourcesOauthListParametersQueryGroupMatchingMode'EnumNameDeny) = "name_deny"
  toJSON (SourcesOauthListParametersQueryGroupMatchingMode'EnumNameLink) = "name_link"

instance Data.Aeson.Types.FromJSON.FromJSON SourcesOauthListParametersQueryGroupMatchingMode' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "identifier" -> SourcesOauthListParametersQueryGroupMatchingMode'EnumIdentifier
          | val GHC.Classes.== "name_deny" -> SourcesOauthListParametersQueryGroupMatchingMode'EnumNameDeny
          | val GHC.Classes.== "name_link" -> SourcesOauthListParametersQueryGroupMatchingMode'EnumNameLink
          | GHC.Base.otherwise -> SourcesOauthListParametersQueryGroupMatchingMode'Other val
      )

-- | Defines the enum schema located at @paths.\/sources\/oauth\/.GET.parameters.properties.queryPolicy_engine_mode@ in the specification.
--
-- Represents the parameter named \'policy_engine_mode\'
data SourcesOauthListParametersQueryPolicyEngineMode'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SourcesOauthListParametersQueryPolicyEngineMode'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SourcesOauthListParametersQueryPolicyEngineMode'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"all"@
    SourcesOauthListParametersQueryPolicyEngineMode'EnumAll
  | -- | Represents the JSON value @"any"@
    SourcesOauthListParametersQueryPolicyEngineMode'EnumAny
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SourcesOauthListParametersQueryPolicyEngineMode' where
  toJSON (SourcesOauthListParametersQueryPolicyEngineMode'Other val) = val
  toJSON (SourcesOauthListParametersQueryPolicyEngineMode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SourcesOauthListParametersQueryPolicyEngineMode'EnumAll) = "all"
  toJSON (SourcesOauthListParametersQueryPolicyEngineMode'EnumAny) = "any"

instance Data.Aeson.Types.FromJSON.FromJSON SourcesOauthListParametersQueryPolicyEngineMode' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "all" -> SourcesOauthListParametersQueryPolicyEngineMode'EnumAll
          | val GHC.Classes.== "any" -> SourcesOauthListParametersQueryPolicyEngineMode'EnumAny
          | GHC.Base.otherwise -> SourcesOauthListParametersQueryPolicyEngineMode'Other val
      )

-- | Defines the enum schema located at @paths.\/sources\/oauth\/.GET.parameters.properties.queryUser_matching_mode@ in the specification.
--
-- Represents the parameter named \'user_matching_mode\'
--
-- How the source determines if an existing user should be authenticated or a new user enrolled.
data SourcesOauthListParametersQueryUserMatchingMode'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SourcesOauthListParametersQueryUserMatchingMode'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SourcesOauthListParametersQueryUserMatchingMode'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"email_deny"@
    SourcesOauthListParametersQueryUserMatchingMode'EnumEmailDeny
  | -- | Represents the JSON value @"email_link"@
    SourcesOauthListParametersQueryUserMatchingMode'EnumEmailLink
  | -- | Represents the JSON value @"identifier"@
    SourcesOauthListParametersQueryUserMatchingMode'EnumIdentifier
  | -- | Represents the JSON value @"username_deny"@
    SourcesOauthListParametersQueryUserMatchingMode'EnumUsernameDeny
  | -- | Represents the JSON value @"username_link"@
    SourcesOauthListParametersQueryUserMatchingMode'EnumUsernameLink
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SourcesOauthListParametersQueryUserMatchingMode' where
  toJSON (SourcesOauthListParametersQueryUserMatchingMode'Other val) = val
  toJSON (SourcesOauthListParametersQueryUserMatchingMode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SourcesOauthListParametersQueryUserMatchingMode'EnumEmailDeny) = "email_deny"
  toJSON (SourcesOauthListParametersQueryUserMatchingMode'EnumEmailLink) = "email_link"
  toJSON (SourcesOauthListParametersQueryUserMatchingMode'EnumIdentifier) = "identifier"
  toJSON (SourcesOauthListParametersQueryUserMatchingMode'EnumUsernameDeny) = "username_deny"
  toJSON (SourcesOauthListParametersQueryUserMatchingMode'EnumUsernameLink) = "username_link"

instance Data.Aeson.Types.FromJSON.FromJSON SourcesOauthListParametersQueryUserMatchingMode' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "email_deny" -> SourcesOauthListParametersQueryUserMatchingMode'EnumEmailDeny
          | val GHC.Classes.== "email_link" -> SourcesOauthListParametersQueryUserMatchingMode'EnumEmailLink
          | val GHC.Classes.== "identifier" -> SourcesOauthListParametersQueryUserMatchingMode'EnumIdentifier
          | val GHC.Classes.== "username_deny" -> SourcesOauthListParametersQueryUserMatchingMode'EnumUsernameDeny
          | val GHC.Classes.== "username_link" -> SourcesOauthListParametersQueryUserMatchingMode'EnumUsernameLink
          | GHC.Base.otherwise -> SourcesOauthListParametersQueryUserMatchingMode'Other val
      )

-- | Represents a response of the operation 'sourcesOauthList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'SourcesOauthListResponseError' is used.
data SourcesOauthListResponse
  = -- | Means either no matching case available or a parse error
    SourcesOauthListResponseError GHC.Base.String
  | SourcesOauthListResponse200 PaginatedOAuthSourceList
  | SourcesOauthListResponse400 ValidationError
  | SourcesOauthListResponse403 GenericError
  deriving (GHC.Show.Show, GHC.Classes.Eq)
