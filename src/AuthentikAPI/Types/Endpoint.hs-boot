module AuthentikAPI.Types.Endpoint where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Endpoint
instance Show Endpoint
instance Eq Endpoint
instance Data.Aeson.FromJSON Endpoint
instance Data.Aeson.ToJSON Endpoint
data EndpointProviderObj'
instance Show EndpointProviderObj'
instance Eq EndpointProviderObj'
instance Data.Aeson.FromJSON EndpointProviderObj'
instance Data.Aeson.ToJSON EndpointProviderObj'
