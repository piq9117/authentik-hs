module AuthentikAPI.Types.KerberosSyncStatus where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data KerberosSyncStatus
instance Show KerberosSyncStatus
instance Eq KerberosSyncStatus
instance Data.Aeson.FromJSON KerberosSyncStatus
instance Data.Aeson.ToJSON KerberosSyncStatus
