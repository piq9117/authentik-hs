module AuthentikAPI.Types.PaginatedRoleList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedRoleList
instance Show PaginatedRoleList
instance Eq PaginatedRoleList
instance Data.Aeson.FromJSON PaginatedRoleList
instance Data.Aeson.ToJSON PaginatedRoleList
