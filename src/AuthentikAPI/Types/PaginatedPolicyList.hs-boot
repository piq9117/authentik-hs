module AuthentikAPI.Types.PaginatedPolicyList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedPolicyList
instance Show PaginatedPolicyList
instance Eq PaginatedPolicyList
instance Data.Aeson.FromJSON PaginatedPolicyList
instance Data.Aeson.ToJSON PaginatedPolicyList
