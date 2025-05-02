module AuthentikAPI.Types.PaginatedSourceList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedSourceList
instance Show PaginatedSourceList
instance Eq PaginatedSourceList
instance Data.Aeson.FromJSON PaginatedSourceList
instance Data.Aeson.ToJSON PaginatedSourceList
