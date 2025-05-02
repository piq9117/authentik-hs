module AuthentikAPI.Types.PaginatedGroupList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedGroupList
instance Show PaginatedGroupList
instance Eq PaginatedGroupList
instance Data.Aeson.FromJSON PaginatedGroupList
instance Data.Aeson.ToJSON PaginatedGroupList
