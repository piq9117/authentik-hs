module AuthentikAPI.Types.InstallID where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data InstallID
instance Show InstallID
instance Eq InstallID
instance Data.Aeson.FromJSON InstallID
instance Data.Aeson.ToJSON InstallID
