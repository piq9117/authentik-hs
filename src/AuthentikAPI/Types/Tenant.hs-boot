module AuthentikAPI.Types.Tenant where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Tenant
instance Show Tenant
instance Eq Tenant
instance Data.Aeson.FromJSON Tenant
instance Data.Aeson.ToJSON Tenant
