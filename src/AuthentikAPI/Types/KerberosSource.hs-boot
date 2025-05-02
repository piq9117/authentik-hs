module AuthentikAPI.Types.KerberosSource where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data KerberosSource
instance Show KerberosSource
instance Eq KerberosSource
instance Data.Aeson.FromJSON KerberosSource
instance Data.Aeson.ToJSON KerberosSource
