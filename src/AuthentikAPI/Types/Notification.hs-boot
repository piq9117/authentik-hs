module AuthentikAPI.Types.Notification where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Notification
instance Show Notification
instance Eq Notification
instance Data.Aeson.FromJSON Notification
instance Data.Aeson.ToJSON Notification
