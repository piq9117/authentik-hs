module AuthentikAPI.Types.TOTPDevice where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data TOTPDevice
instance Show TOTPDevice
instance Eq TOTPDevice
instance Data.Aeson.FromJSON TOTPDevice
instance Data.Aeson.ToJSON TOTPDevice
data TOTPDeviceUser'
instance Show TOTPDeviceUser'
instance Eq TOTPDeviceUser'
instance Data.Aeson.FromJSON TOTPDeviceUser'
instance Data.Aeson.ToJSON TOTPDeviceUser'
