module AuthentikAPI.Types.PatchedConnectionTokenRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PatchedConnectionTokenRequest
instance Show PatchedConnectionTokenRequest
instance Eq PatchedConnectionTokenRequest
instance Data.Aeson.FromJSON PatchedConnectionTokenRequest
instance Data.Aeson.ToJSON PatchedConnectionTokenRequest
