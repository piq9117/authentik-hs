module AuthentikAPI.Types.NotificationRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data NotificationRequest
instance Show NotificationRequest
instance Eq NotificationRequest
instance Data.Aeson.FromJSON NotificationRequest
instance Data.Aeson.ToJSON NotificationRequest
