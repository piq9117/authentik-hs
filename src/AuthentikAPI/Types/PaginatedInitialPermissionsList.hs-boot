module AuthentikAPI.Types.PaginatedInitialPermissionsList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedInitialPermissionsList
instance Show PaginatedInitialPermissionsList
instance Eq PaginatedInitialPermissionsList
instance Data.Aeson.FromJSON PaginatedInitialPermissionsList
instance Data.Aeson.ToJSON PaginatedInitialPermissionsList
