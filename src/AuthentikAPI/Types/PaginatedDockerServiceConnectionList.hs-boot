module AuthentikAPI.Types.PaginatedDockerServiceConnectionList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedDockerServiceConnectionList
instance Show PaginatedDockerServiceConnectionList
instance Eq PaginatedDockerServiceConnectionList
instance Data.Aeson.FromJSON PaginatedDockerServiceConnectionList
instance Data.Aeson.ToJSON PaginatedDockerServiceConnectionList
