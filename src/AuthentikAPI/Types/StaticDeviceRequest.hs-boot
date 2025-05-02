module AuthentikAPI.Types.StaticDeviceRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data StaticDeviceRequest
instance Show StaticDeviceRequest
instance Eq StaticDeviceRequest
instance Data.Aeson.FromJSON StaticDeviceRequest
instance Data.Aeson.ToJSON StaticDeviceRequest
