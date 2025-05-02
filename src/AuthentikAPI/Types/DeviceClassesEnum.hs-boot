module AuthentikAPI.Types.DeviceClassesEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DeviceClassesEnum
instance Show DeviceClassesEnum
instance Eq DeviceClassesEnum
instance Data.Aeson.FromJSON DeviceClassesEnum
instance Data.Aeson.ToJSON DeviceClassesEnum
