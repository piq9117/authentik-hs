module AuthentikAPI.Types.PatchedScopeMappingRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PatchedScopeMappingRequest
instance Show PatchedScopeMappingRequest
instance Eq PatchedScopeMappingRequest
instance Data.Aeson.FromJSON PatchedScopeMappingRequest
instance Data.Aeson.ToJSON PatchedScopeMappingRequest
