module AuthentikAPI.Types.PaginatedTokenList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedTokenList
instance Show PaginatedTokenList
instance Eq PaginatedTokenList
instance Data.Aeson.FromJSON PaginatedTokenList
instance Data.Aeson.ToJSON PaginatedTokenList
