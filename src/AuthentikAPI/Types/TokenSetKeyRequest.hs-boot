module AuthentikAPI.Types.TokenSetKeyRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data TokenSetKeyRequest
instance Show TokenSetKeyRequest
instance Eq TokenSetKeyRequest
instance Data.Aeson.FromJSON TokenSetKeyRequest
instance Data.Aeson.ToJSON TokenSetKeyRequest
