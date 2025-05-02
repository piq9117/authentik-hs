module AuthentikAPI.Types.PaginatedDomainList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedDomainList
instance Show PaginatedDomainList
instance Eq PaginatedDomainList
instance Data.Aeson.FromJSON PaginatedDomainList
instance Data.Aeson.ToJSON PaginatedDomainList
