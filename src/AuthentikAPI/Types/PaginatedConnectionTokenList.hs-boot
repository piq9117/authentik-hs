module AuthentikAPI.Types.PaginatedConnectionTokenList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedConnectionTokenList
instance Show PaginatedConnectionTokenList
instance Eq PaginatedConnectionTokenList
instance Data.Aeson.FromJSON PaginatedConnectionTokenList
instance Data.Aeson.ToJSON PaginatedConnectionTokenList
