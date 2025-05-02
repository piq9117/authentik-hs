module AuthentikAPI.Types.PatchedGroupRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PatchedGroupRequest
instance Show PatchedGroupRequest
instance Eq PatchedGroupRequest
instance Data.Aeson.FromJSON PatchedGroupRequest
instance Data.Aeson.ToJSON PatchedGroupRequest
