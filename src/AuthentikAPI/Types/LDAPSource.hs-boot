module AuthentikAPI.Types.LDAPSource where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LDAPSource
instance Show LDAPSource
instance Eq LDAPSource
instance Data.Aeson.FromJSON LDAPSource
instance Data.Aeson.ToJSON LDAPSource
