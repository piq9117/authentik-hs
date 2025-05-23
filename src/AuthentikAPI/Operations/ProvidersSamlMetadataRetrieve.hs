{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation providersSamlMetadataRetrieve
module AuthentikAPI.Operations.ProvidersSamlMetadataRetrieve where

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

-- | > GET /providers/saml/{id}/metadata/
--
-- Return metadata as XML string
providersSamlMetadataRetrieve ::
  forall m.
  (AuthentikAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  ProvidersSamlMetadataRetrieveParameters ->
  -- | Monadic computation which returns the result of the operation
  AuthentikAPI.Common.ClientT m (Network.HTTP.Client.Types.Response ProvidersSamlMetadataRetrieveResponse)
providersSamlMetadataRetrieve parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either ProvidersSamlMetadataRetrieveResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   ProvidersSamlMetadataRetrieveResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            SAMLMetadata
                                                      )
                               | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) ->
                                   ProvidersSamlMetadataRetrieveResponse400
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ValidationError
                                                      )
                               | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 403) (Network.HTTP.Client.Types.responseStatus response) ->
                                   ProvidersSamlMetadataRetrieveResponse403
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GenericError
                                                      )
                               | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 404) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right ProvidersSamlMetadataRetrieveResponse404
                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    ( AuthentikAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET")
        ("/providers/saml/" GHC.Base.<> (AuthentikAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (AuthentikAPI.Common.textToByte GHC.Base.$ AuthentikAPI.Common.stringifyModel (providersSamlMetadataRetrieveParametersPathId parameters))) GHC.Base.<> "/metadata/"))
        [ AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "download") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> providersSamlMetadataRetrieveParametersQueryDownload parameters) (Data.Text.Internal.pack "form") GHC.Types.False,
          AuthentikAPI.Common.QueryParameter (Data.Text.Internal.pack "force_binding") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> providersSamlMetadataRetrieveParametersQueryForceBinding parameters) (Data.Text.Internal.pack "form") GHC.Types.False
        ]
    )

-- | Defines the object schema located at @paths.\/providers\/saml\/{id}\/metadata\/.GET.parameters@ in the specification.
data ProvidersSamlMetadataRetrieveParameters = ProvidersSamlMetadataRetrieveParameters
  { -- | pathId: Represents the parameter named \'id\'
    --
    -- A unique integer value identifying this SAML Provider.
    providersSamlMetadataRetrieveParametersPathId :: GHC.Types.Int,
    -- | queryDownload: Represents the parameter named \'download\'
    providersSamlMetadataRetrieveParametersQueryDownload :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryForce_binding: Represents the parameter named \'force_binding\'
    --
    -- Optionally force the metadata to only include one binding.
    providersSamlMetadataRetrieveParametersQueryForceBinding :: (GHC.Maybe.Maybe ProvidersSamlMetadataRetrieveParametersQueryForceBinding')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ProvidersSamlMetadataRetrieveParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathId" Data.Aeson.Types.ToJSON..= providersSamlMetadataRetrieveParametersPathId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryDownload" Data.Aeson.Types.ToJSON..=)) (providersSamlMetadataRetrieveParametersQueryDownload obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryForce_binding" Data.Aeson.Types.ToJSON..=)) (providersSamlMetadataRetrieveParametersQueryForceBinding obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathId" Data.Aeson.Types.ToJSON..= providersSamlMetadataRetrieveParametersPathId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryDownload" Data.Aeson.Types.ToJSON..=)) (providersSamlMetadataRetrieveParametersQueryDownload obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryForce_binding" Data.Aeson.Types.ToJSON..=)) (providersSamlMetadataRetrieveParametersQueryForceBinding obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON ProvidersSamlMetadataRetrieveParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ProvidersSamlMetadataRetrieveParameters" (\obj -> ((GHC.Base.pure ProvidersSamlMetadataRetrieveParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryDownload")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryForce_binding"))

-- | Create a new 'ProvidersSamlMetadataRetrieveParameters' with all required fields.
mkProvidersSamlMetadataRetrieveParameters ::
  -- | 'providersSamlMetadataRetrieveParametersPathId'
  GHC.Types.Int ->
  ProvidersSamlMetadataRetrieveParameters
mkProvidersSamlMetadataRetrieveParameters providersSamlMetadataRetrieveParametersPathId =
  ProvidersSamlMetadataRetrieveParameters
    { providersSamlMetadataRetrieveParametersPathId = providersSamlMetadataRetrieveParametersPathId,
      providersSamlMetadataRetrieveParametersQueryDownload = GHC.Maybe.Nothing,
      providersSamlMetadataRetrieveParametersQueryForceBinding = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/providers\/saml\/{id}\/metadata\/.GET.parameters.properties.queryForce_binding@ in the specification.
--
-- Represents the parameter named \'force_binding\'
--
-- Optionally force the metadata to only include one binding.
data ProvidersSamlMetadataRetrieveParametersQueryForceBinding'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    ProvidersSamlMetadataRetrieveParametersQueryForceBinding'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    ProvidersSamlMetadataRetrieveParametersQueryForceBinding'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST"@
    ProvidersSamlMetadataRetrieveParametersQueryForceBinding'EnumUrnOasisNamesTcSAML_2'0BindingsHTTPPOST
  | -- | Represents the JSON value @"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect"@
    ProvidersSamlMetadataRetrieveParametersQueryForceBinding'EnumUrnOasisNamesTcSAML_2'0BindingsHTTPRedirect
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON ProvidersSamlMetadataRetrieveParametersQueryForceBinding' where
  toJSON (ProvidersSamlMetadataRetrieveParametersQueryForceBinding'Other val) = val
  toJSON (ProvidersSamlMetadataRetrieveParametersQueryForceBinding'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (ProvidersSamlMetadataRetrieveParametersQueryForceBinding'EnumUrnOasisNamesTcSAML_2'0BindingsHTTPPOST) = "urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST"
  toJSON (ProvidersSamlMetadataRetrieveParametersQueryForceBinding'EnumUrnOasisNamesTcSAML_2'0BindingsHTTPRedirect) = "urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect"

instance Data.Aeson.Types.FromJSON.FromJSON ProvidersSamlMetadataRetrieveParametersQueryForceBinding' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST" -> ProvidersSamlMetadataRetrieveParametersQueryForceBinding'EnumUrnOasisNamesTcSAML_2'0BindingsHTTPPOST
          | val GHC.Classes.== "urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect" -> ProvidersSamlMetadataRetrieveParametersQueryForceBinding'EnumUrnOasisNamesTcSAML_2'0BindingsHTTPRedirect
          | GHC.Base.otherwise -> ProvidersSamlMetadataRetrieveParametersQueryForceBinding'Other val
      )

-- | Represents a response of the operation 'providersSamlMetadataRetrieve'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ProvidersSamlMetadataRetrieveResponseError' is used.
data ProvidersSamlMetadataRetrieveResponse
  = -- | Means either no matching case available or a parse error
    ProvidersSamlMetadataRetrieveResponseError GHC.Base.String
  | ProvidersSamlMetadataRetrieveResponse200 SAMLMetadata
  | ProvidersSamlMetadataRetrieveResponse400 ValidationError
  | ProvidersSamlMetadataRetrieveResponse403 GenericError
  | -- | Provider has no application assigned
    ProvidersSamlMetadataRetrieveResponse404
  deriving (GHC.Show.Show, GHC.Classes.Eq)
