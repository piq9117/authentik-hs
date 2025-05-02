module AuthentikAPI.Types.Device where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Device
instance Show Device
instance Eq Device
instance Data.Aeson.FromJSON Device
instance Data.Aeson.ToJSON Device
