module AuthentikAPI.Types.ProxyProvider where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ProxyProvider
instance Show ProxyProvider
instance Eq ProxyProvider
instance Data.Aeson.FromJSON ProxyProvider
instance Data.Aeson.ToJSON ProxyProvider
