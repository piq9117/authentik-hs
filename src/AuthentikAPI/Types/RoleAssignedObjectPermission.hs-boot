module AuthentikAPI.Types.RoleAssignedObjectPermission where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data RoleAssignedObjectPermission
instance Show RoleAssignedObjectPermission
instance Eq RoleAssignedObjectPermission
instance Data.Aeson.FromJSON RoleAssignedObjectPermission
instance Data.Aeson.ToJSON RoleAssignedObjectPermission
