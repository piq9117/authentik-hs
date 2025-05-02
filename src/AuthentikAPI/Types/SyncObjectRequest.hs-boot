module AuthentikAPI.Types.SyncObjectRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SyncObjectRequest
instance Show SyncObjectRequest
instance Eq SyncObjectRequest
instance Data.Aeson.FromJSON SyncObjectRequest
instance Data.Aeson.ToJSON SyncObjectRequest
