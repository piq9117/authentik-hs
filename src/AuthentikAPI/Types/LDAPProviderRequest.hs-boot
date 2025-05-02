module AuthentikAPI.Types.LDAPProviderRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LDAPProviderRequest
instance Show LDAPProviderRequest
instance Eq LDAPProviderRequest
instance Data.Aeson.FromJSON LDAPProviderRequest
instance Data.Aeson.ToJSON LDAPProviderRequest
