module AuthentikAPI.Types.PatchedUserRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PatchedUserRequest
instance Show PatchedUserRequest
instance Eq PatchedUserRequest
instance Data.Aeson.FromJSON PatchedUserRequest
instance Data.Aeson.ToJSON PatchedUserRequest
