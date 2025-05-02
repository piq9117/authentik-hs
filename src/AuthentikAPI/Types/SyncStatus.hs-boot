module AuthentikAPI.Types.SyncStatus where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SyncStatus
instance Show SyncStatus
instance Eq SyncStatus
instance Data.Aeson.FromJSON SyncStatus
instance Data.Aeson.ToJSON SyncStatus
