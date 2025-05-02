module AuthentikAPI.Types.PaginatedPromptList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedPromptList
instance Show PaginatedPromptList
instance Eq PaginatedPromptList
instance Data.Aeson.FromJSON PaginatedPromptList
instance Data.Aeson.ToJSON PaginatedPromptList
