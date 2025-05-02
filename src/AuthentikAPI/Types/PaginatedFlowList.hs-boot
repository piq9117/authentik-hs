module AuthentikAPI.Types.PaginatedFlowList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedFlowList
instance Show PaginatedFlowList
instance Eq PaginatedFlowList
instance Data.Aeson.FromJSON PaginatedFlowList
instance Data.Aeson.ToJSON PaginatedFlowList
