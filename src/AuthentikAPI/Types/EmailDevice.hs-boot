module AuthentikAPI.Types.EmailDevice where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data EmailDevice
instance Show EmailDevice
instance Eq EmailDevice
instance Data.Aeson.FromJSON EmailDevice
instance Data.Aeson.ToJSON EmailDevice
data EmailDeviceUser'
instance Show EmailDeviceUser'
instance Eq EmailDeviceUser'
instance Data.Aeson.FromJSON EmailDeviceUser'
instance Data.Aeson.ToJSON EmailDeviceUser'
