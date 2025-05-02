module AuthentikAPI.Types.SAMLSourceRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SAMLSourceRequest
instance Show SAMLSourceRequest
instance Eq SAMLSourceRequest
instance Data.Aeson.FromJSON SAMLSourceRequest
instance Data.Aeson.ToJSON SAMLSourceRequest
