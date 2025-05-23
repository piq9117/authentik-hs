{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation tenantsTenantsCreateRecoveryKeyCreate
module AuthentikAPI.Operations.TenantsTenantsCreateRecoveryKeyCreate where

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

-- | > POST /tenants/tenants/{tenant_uuid}/create_recovery_key/
--
-- Create recovery key for user.
tenantsTenantsCreateRecoveryKeyCreate ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | tenant_uuid: A UUID string identifying this Tenant.
  Data.Text.Internal.Text ->
  -- | The request body to send
  TenantRecoveryKeyRequestRequest ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response TenantsTenantsCreateRecoveryKeyCreateResponse)
tenantsTenantsCreateRecoveryKeyCreate
  tenantUuid
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either TenantsTenantsCreateRecoveryKeyCreateResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     TenantsTenantsCreateRecoveryKeyCreateResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              TenantRecoveryKeyResponse
                                                        )
                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right TenantsTenantsCreateRecoveryKeyCreateResponse400
                                 | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                     TenantsTenantsCreateRecoveryKeyCreateResponse403
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              GenericError
                                                        )
                                 | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right TenantsTenantsCreateRecoveryKeyCreateResponse404
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                           )
                  response_0
            )
            response_0
      )
      (AuthentikAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/tenants/tenants/" GHC.Base.<> (AuthentikAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (AuthentikAPI.Common.textToByte GHC.Base.$ AuthentikAPI.Common.stringifyModel tenantUuid)) GHC.Base.<> "/create_recovery_key/")) GHC.Base.mempty (GHC.Maybe.Just body) AuthentikAPI.Common.RequestBodyEncodingJSON)

-- | Represents a response of the operation 'tenantsTenantsCreateRecoveryKeyCreate'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'TenantsTenantsCreateRecoveryKeyCreateResponseError' is used.
data TenantsTenantsCreateRecoveryKeyCreateResponse
  = -- | Means either no matching case available or a parse error
    TenantsTenantsCreateRecoveryKeyCreateResponseError GHC.Base.String
  | TenantsTenantsCreateRecoveryKeyCreateResponse200 TenantRecoveryKeyResponse
  | -- | Bad request
    TenantsTenantsCreateRecoveryKeyCreateResponse400
  | TenantsTenantsCreateRecoveryKeyCreateResponse403 GenericError
  | -- | User not found
    TenantsTenantsCreateRecoveryKeyCreateResponse404
  deriving (GHC.Show.Show, GHC.Classes.Eq)
