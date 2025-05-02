module AuthentikAPI.Types.PatchedRoleRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PatchedRoleRequest
instance Show PatchedRoleRequest
instance Eq PatchedRoleRequest
instance Data.Aeson.FromJSON PatchedRoleRequest
instance Data.Aeson.ToJSON PatchedRoleRequest
