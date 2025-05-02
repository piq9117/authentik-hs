module AuthentikAPI.Types.PaginatedUserList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedUserList
instance Show PaginatedUserList
instance Eq PaginatedUserList
instance Data.Aeson.FromJSON PaginatedUserList
instance Data.Aeson.ToJSON PaginatedUserList
