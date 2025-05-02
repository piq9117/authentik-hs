module AuthentikAPI.Types.Permission where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Permission
instance Show Permission
instance Eq Permission
instance Data.Aeson.FromJSON Permission
instance Data.Aeson.ToJSON Permission
