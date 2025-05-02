module AuthentikAPI.Types.LDAPSourceRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LDAPSourceRequest
instance Show LDAPSourceRequest
instance Eq LDAPSourceRequest
instance Data.Aeson.FromJSON LDAPSourceRequest
instance Data.Aeson.ToJSON LDAPSourceRequest
