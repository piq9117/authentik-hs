module AuthentikAPI.Types.PaginatedBrandList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedBrandList
instance Show PaginatedBrandList
instance Eq PaginatedBrandList
instance Data.Aeson.FromJSON PaginatedBrandList
instance Data.Aeson.ToJSON PaginatedBrandList
