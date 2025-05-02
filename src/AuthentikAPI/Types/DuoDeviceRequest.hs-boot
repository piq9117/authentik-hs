module AuthentikAPI.Types.DuoDeviceRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DuoDeviceRequest
instance Show DuoDeviceRequest
instance Eq DuoDeviceRequest
instance Data.Aeson.FromJSON DuoDeviceRequest
instance Data.Aeson.ToJSON DuoDeviceRequest
