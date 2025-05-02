module AuthentikAPI.Types.DeviceChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DeviceChallenge
instance Show DeviceChallenge
instance Eq DeviceChallenge
instance Data.Aeson.FromJSON DeviceChallenge
instance Data.Aeson.ToJSON DeviceChallenge
