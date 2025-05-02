module AuthentikAPI.Types.PatchedBrandRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PatchedBrandRequest
instance Show PatchedBrandRequest
instance Eq PatchedBrandRequest
instance Data.Aeson.FromJSON PatchedBrandRequest
instance Data.Aeson.ToJSON PatchedBrandRequest
