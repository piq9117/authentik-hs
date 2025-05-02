module AuthentikAPI.Types.SystemInfo where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SystemInfo
instance Show SystemInfo
instance Eq SystemInfo
instance Data.Aeson.FromJSON SystemInfo
instance Data.Aeson.ToJSON SystemInfo
data SystemInfoRuntime'
instance Show SystemInfoRuntime'
instance Eq SystemInfoRuntime'
instance Data.Aeson.FromJSON SystemInfoRuntime'
instance Data.Aeson.ToJSON SystemInfoRuntime'
