module AuthentikAPI.Types.OAuth2ProviderRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data OAuth2ProviderRequest
instance Show OAuth2ProviderRequest
instance Eq OAuth2ProviderRequest
instance Data.Aeson.FromJSON OAuth2ProviderRequest
instance Data.Aeson.ToJSON OAuth2ProviderRequest
