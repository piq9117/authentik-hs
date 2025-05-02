module AuthentikAPI.Types.OAuth2Provider where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data OAuth2Provider
instance Show OAuth2Provider
instance Eq OAuth2Provider
instance Data.Aeson.FromJSON OAuth2Provider
instance Data.Aeson.ToJSON OAuth2Provider
