module AuthentikAPI.Types.LDAPOutpostConfig where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LDAPOutpostConfig
instance Show LDAPOutpostConfig
instance Eq LDAPOutpostConfig
instance Data.Aeson.FromJSON LDAPOutpostConfig
instance Data.Aeson.ToJSON LDAPOutpostConfig
