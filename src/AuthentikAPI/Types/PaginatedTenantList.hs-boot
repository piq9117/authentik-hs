module AuthentikAPI.Types.PaginatedTenantList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedTenantList
instance Show PaginatedTenantList
instance Eq PaginatedTenantList
instance Data.Aeson.FromJSON PaginatedTenantList
instance Data.Aeson.ToJSON PaginatedTenantList
