module AuthentikAPI.Types.TOTPDeviceRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data TOTPDeviceRequest
instance Show TOTPDeviceRequest
instance Eq TOTPDeviceRequest
instance Data.Aeson.FromJSON TOTPDeviceRequest
instance Data.Aeson.ToJSON TOTPDeviceRequest
