module AuthentikAPI.Types.LDAPProvider where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LDAPProvider
instance Show LDAPProvider
instance Eq LDAPProvider
instance Data.Aeson.FromJSON LDAPProvider
instance Data.Aeson.ToJSON LDAPProvider
