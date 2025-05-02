module AuthentikAPI.Types.PaginatedEventList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedEventList
instance Show PaginatedEventList
instance Eq PaginatedEventList
instance Data.Aeson.FromJSON PaginatedEventList
instance Data.Aeson.ToJSON PaginatedEventList
