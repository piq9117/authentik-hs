module AuthentikAPI.Types.NotificationTransport where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data NotificationTransport
instance Show NotificationTransport
instance Eq NotificationTransport
instance Data.Aeson.FromJSON NotificationTransport
instance Data.Aeson.ToJSON NotificationTransport
