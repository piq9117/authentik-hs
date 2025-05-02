module AuthentikAPI.Types.LDAPDebug where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LDAPDebug
instance Show LDAPDebug
instance Eq LDAPDebug
instance Data.Aeson.FromJSON LDAPDebug
instance Data.Aeson.ToJSON LDAPDebug
