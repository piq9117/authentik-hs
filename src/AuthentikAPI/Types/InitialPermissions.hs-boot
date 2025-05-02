module AuthentikAPI.Types.InitialPermissions where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data InitialPermissions
instance Show InitialPermissions
instance Eq InitialPermissions
instance Data.Aeson.FromJSON InitialPermissions
instance Data.Aeson.ToJSON InitialPermissions
