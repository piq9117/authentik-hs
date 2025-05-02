module AuthentikAPI.Types.SMSDevice where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SMSDevice
instance Show SMSDevice
instance Eq SMSDevice
instance Data.Aeson.FromJSON SMSDevice
instance Data.Aeson.ToJSON SMSDevice
data SMSDeviceUser'
instance Show SMSDeviceUser'
instance Eq SMSDeviceUser'
instance Data.Aeson.FromJSON SMSDeviceUser'
instance Data.Aeson.ToJSON SMSDeviceUser'
