module AuthentikAPI.Types.PatchedTokenRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PatchedTokenRequest
instance Show PatchedTokenRequest
instance Eq PatchedTokenRequest
instance Data.Aeson.FromJSON PatchedTokenRequest
instance Data.Aeson.ToJSON PatchedTokenRequest
