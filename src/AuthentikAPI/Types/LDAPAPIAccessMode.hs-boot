module AuthentikAPI.Types.LDAPAPIAccessMode where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LDAPAPIAccessMode
instance Show LDAPAPIAccessMode
instance Eq LDAPAPIAccessMode
instance Data.Aeson.FromJSON LDAPAPIAccessMode
instance Data.Aeson.ToJSON LDAPAPIAccessMode
