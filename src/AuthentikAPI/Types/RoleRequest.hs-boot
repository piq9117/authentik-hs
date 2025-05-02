module AuthentikAPI.Types.RoleRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data RoleRequest
instance Show RoleRequest
instance Eq RoleRequest
instance Data.Aeson.FromJSON RoleRequest
instance Data.Aeson.ToJSON RoleRequest
