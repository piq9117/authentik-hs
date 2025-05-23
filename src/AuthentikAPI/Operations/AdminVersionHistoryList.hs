{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation adminVersionHistoryList
module AuthentikAPI.Operations.AdminVersionHistoryList where

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

-- | > GET /admin/version/history/
--
-- VersionHistory Viewset
adminVersionHistoryList ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  AdminVersionHistoryListParameters ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response AdminVersionHistoryListResponse)
adminVersionHistoryList parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either AdminVersionHistoryListResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   AdminVersionHistoryListResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            [VersionHistory]
                                                      )
                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   AdminVersionHistoryListResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ValidationError
                                                      )
                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                   AdminVersionHistoryListResponse403
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
        "/admin/version/history/"
        [ AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "build") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> adminVersionHistoryListParametersQueryBuild parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "ordering") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> adminVersionHistoryListParametersQueryOrdering parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "search") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> adminVersionHistoryListParametersQuerySearch parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "version") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> adminVersionHistoryListParametersQueryVersion parameters) (Data.Text.Internal.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/admin\/version\/history\/.GET.parameters@ in the specification.
data AdminVersionHistoryListParameters = AdminVersionHistoryListParameters
  { -- | queryBuild: Represents the parameter named \'build\'
    adminVersionHistoryListParametersQueryBuild :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryOrdering: Represents the parameter named \'ordering\'
    --
    -- Which field to use when ordering the results.
    adminVersionHistoryListParametersQueryOrdering :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | querySearch: Represents the parameter named \'search\'
    --
    -- A search term.
    adminVersionHistoryListParametersQuerySearch :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryVersion: Represents the parameter named \'version\'
    adminVersionHistoryListParametersQueryVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AdminVersionHistoryListParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBuild" Data.Aeson.Types.ToJSON..=)) (adminVersionHistoryListParametersQueryBuild obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (adminVersionHistoryListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (adminVersionHistoryListParametersQuerySearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryVersion" Data.Aeson.Types.ToJSON..=)) (adminVersionHistoryListParametersQueryVersion obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBuild" Data.Aeson.Types.ToJSON..=)) (adminVersionHistoryListParametersQueryBuild obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOrdering" Data.Aeson.Types.ToJSON..=)) (adminVersionHistoryListParametersQueryOrdering obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("querySearch" Data.Aeson.Types.ToJSON..=)) (adminVersionHistoryListParametersQuerySearch obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryVersion" Data.Aeson.Types.ToJSON..=)) (adminVersionHistoryListParametersQueryVersion obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON AdminVersionHistoryListParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AdminVersionHistoryListParameters" (\obj -> (((GHC.Base.pure AdminVersionHistoryListParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryBuild")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOrdering")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "querySearch")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryVersion"))

-- | Create a new 'AdminVersionHistoryListParameters' with all required fields.
mkAdminVersionHistoryListParameters :: AdminVersionHistoryListParameters
mkAdminVersionHistoryListParameters =
  AdminVersionHistoryListParameters
    { adminVersionHistoryListParametersQueryBuild = GHC.Maybe.Nothing,
      adminVersionHistoryListParametersQueryOrdering = GHC.Maybe.Nothing,
      adminVersionHistoryListParametersQuerySearch = GHC.Maybe.Nothing,
      adminVersionHistoryListParametersQueryVersion = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'adminVersionHistoryList'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'AdminVersionHistoryListResponseError' is used.
data AdminVersionHistoryListResponse
  = -- | Means either no matching case available or a parse error
    AdminVersionHistoryListResponseError GHC.Base.String
  | AdminVersionHistoryListResponse200 [VersionHistory]
  | AdminVersionHistoryListResponse400 ValidationError
  | AdminVersionHistoryListResponse403 GenericError
  deriving (GHC.Show.Show, GHC.Classes.Eq)
