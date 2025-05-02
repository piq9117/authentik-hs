module AuthentikAPI.Types.DuoDevice where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DuoDevice
instance Show DuoDevice
instance Eq DuoDevice
instance Data.Aeson.FromJSON DuoDevice
instance Data.Aeson.ToJSON DuoDevice
data DuoDeviceUser'
instance Show DuoDeviceUser'
instance Eq DuoDeviceUser'
instance Data.Aeson.FromJSON DuoDeviceUser'
instance Data.Aeson.ToJSON DuoDeviceUser'
