module AuthentikAPI.Types.StaticDevice where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data StaticDevice
instance Show StaticDevice
instance Eq StaticDevice
instance Data.Aeson.FromJSON StaticDevice
instance Data.Aeson.ToJSON StaticDevice
data StaticDeviceUser'
instance Show StaticDeviceUser'
instance Eq StaticDeviceUser'
instance Data.Aeson.FromJSON StaticDeviceUser'
instance Data.Aeson.ToJSON StaticDeviceUser'
