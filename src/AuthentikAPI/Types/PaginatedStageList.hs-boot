module AuthentikAPI.Types.PaginatedStageList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedStageList
instance Show PaginatedStageList
instance Eq PaginatedStageList
instance Data.Aeson.FromJSON PaginatedStageList
instance Data.Aeson.ToJSON PaginatedStageList
