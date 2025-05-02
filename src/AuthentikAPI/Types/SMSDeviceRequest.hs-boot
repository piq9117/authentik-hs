module AuthentikAPI.Types.SMSDeviceRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SMSDeviceRequest
instance Show SMSDeviceRequest
instance Eq SMSDeviceRequest
instance Data.Aeson.FromJSON SMSDeviceRequest
instance Data.Aeson.ToJSON SMSDeviceRequest
