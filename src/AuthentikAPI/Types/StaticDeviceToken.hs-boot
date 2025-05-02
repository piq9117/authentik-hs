module AuthentikAPI.Types.StaticDeviceToken where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data StaticDeviceToken
instance Show StaticDeviceToken
instance Eq StaticDeviceToken
instance Data.Aeson.FromJSON StaticDeviceToken
instance Data.Aeson.ToJSON StaticDeviceToken
