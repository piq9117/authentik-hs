module AuthentikAPI.Types.EndpointRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data EndpointRequest
instance Show EndpointRequest
instance Eq EndpointRequest
instance Data.Aeson.FromJSON EndpointRequest
instance Data.Aeson.ToJSON EndpointRequest
