module AuthentikAPI.Types.PaginatedDenyStageList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedDenyStageList
instance Show PaginatedDenyStageList
instance Eq PaginatedDenyStageList
instance Data.Aeson.FromJSON PaginatedDenyStageList
instance Data.Aeson.ToJSON PaginatedDenyStageList
