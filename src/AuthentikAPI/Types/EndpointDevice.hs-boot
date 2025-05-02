module AuthentikAPI.Types.EndpointDevice where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data EndpointDevice
instance Show EndpointDevice
instance Eq EndpointDevice
instance Data.Aeson.FromJSON EndpointDevice
instance Data.Aeson.ToJSON EndpointDevice
