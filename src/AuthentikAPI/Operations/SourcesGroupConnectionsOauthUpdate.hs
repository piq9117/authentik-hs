{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation sourcesGroupConnectionsOauthUpdate
module AuthentikAPI.Operations.SourcesGroupConnectionsOauthUpdate where

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

-- | > PUT /sources/group_connections/oauth/{id}/
--
-- Group-source connection Viewset
sourcesGroupConnectionsOauthUpdate ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | id: A unique integer value identifying this Group OAuth Source Connection.
  GHC.Types.Int ->
  -- | The request body to send
  GroupOAuthSourceConnectionRequest ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response SourcesGroupConnectionsOauthUpdateResponse)
sourcesGroupConnectionsOauthUpdate
  id
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either SourcesGroupConnectionsOauthUpdateResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     SourcesGroupConnectionsOauthUpdateResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GroupOAuthSourceConnection
                                                        )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                     SourcesGroupConnectionsOauthUpdateResponse400
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ValidationError
                                                        )
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                     SourcesGroupConnectionsOauthUpdateResponse403
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
      (AuthentikAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "PUT") ("/sources/group_connections/oauth/" GHC.Base.<> (AuthentikAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (AuthentikAPI.Common.textToByte GHC.Base.$ AuthentikAPI.Common.stringifyModel id)) GHC.Base.<> "/")) GHC.Base.mempty (GHC.Maybe.Just body) AuthentikAPI.Common.RequestBodyEncodingJSON)

-- | Represents a response of the operation 'sourcesGroupConnectionsOauthUpdate'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'SourcesGroupConnectionsOauthUpdateResponseError' is used.
data SourcesGroupConnectionsOauthUpdateResponse
  = -- | Means either no matching case available or a parse error
    SourcesGroupConnectionsOauthUpdateResponseError GHC.Base.String
  | SourcesGroupConnectionsOauthUpdateResponse200 GroupOAuthSourceConnection
  | SourcesGroupConnectionsOauthUpdateResponse400 ValidationError
  | SourcesGroupConnectionsOauthUpdateResponse403 GenericError
  deriving (GHC.Show.Show, GHC.Classes.Eq)
