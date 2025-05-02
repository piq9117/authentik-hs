module AuthentikAPI.Types.EmailDeviceRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data EmailDeviceRequest
instance Show EmailDeviceRequest
instance Eq EmailDeviceRequest
instance Data.Aeson.FromJSON EmailDeviceRequest
instance Data.Aeson.ToJSON EmailDeviceRequest
