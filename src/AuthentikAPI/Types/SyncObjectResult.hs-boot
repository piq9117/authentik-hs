module AuthentikAPI.Types.SyncObjectResult where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SyncObjectResult
instance Show SyncObjectResult
instance Eq SyncObjectResult
instance Data.Aeson.FromJSON SyncObjectResult
instance Data.Aeson.ToJSON SyncObjectResult
