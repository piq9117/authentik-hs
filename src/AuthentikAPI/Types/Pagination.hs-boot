module AuthentikAPI.Types.Pagination where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Pagination
instance Show Pagination
instance Eq Pagination
instance Data.Aeson.FromJSON Pagination
instance Data.Aeson.ToJSON Pagination
