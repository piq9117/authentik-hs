module AuthentikAPI.Types.VersionHistory where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data VersionHistory
instance Show VersionHistory
instance Eq VersionHistory
instance Data.Aeson.FromJSON VersionHistory
instance Data.Aeson.ToJSON VersionHistory
