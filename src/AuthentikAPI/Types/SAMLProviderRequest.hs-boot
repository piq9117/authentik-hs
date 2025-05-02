module AuthentikAPI.Types.SAMLProviderRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SAMLProviderRequest
instance Show SAMLProviderRequest
instance Eq SAMLProviderRequest
instance Data.Aeson.FromJSON SAMLProviderRequest
instance Data.Aeson.ToJSON SAMLProviderRequest
