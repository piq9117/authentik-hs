module AuthentikAPI.Types.PaginatedTokenModelList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedTokenModelList
instance Show PaginatedTokenModelList
instance Eq PaginatedTokenModelList
instance Data.Aeson.FromJSON PaginatedTokenModelList
instance Data.Aeson.ToJSON PaginatedTokenModelList
