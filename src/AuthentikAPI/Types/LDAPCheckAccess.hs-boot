module AuthentikAPI.Types.LDAPCheckAccess where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LDAPCheckAccess
instance Show LDAPCheckAccess
instance Eq LDAPCheckAccess
instance Data.Aeson.FromJSON LDAPCheckAccess
instance Data.Aeson.ToJSON LDAPCheckAccess
