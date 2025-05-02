module AuthentikAPI.Types.TokenRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data TokenRequest
instance Show TokenRequest
instance Eq TokenRequest
instance Data.Aeson.FromJSON TokenRequest
instance Data.Aeson.ToJSON TokenRequest
