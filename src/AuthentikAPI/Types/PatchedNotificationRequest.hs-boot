module AuthentikAPI.Types.PatchedNotificationRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PatchedNotificationRequest
instance Show PatchedNotificationRequest
instance Eq PatchedNotificationRequest
instance Data.Aeson.FromJSON PatchedNotificationRequest
instance Data.Aeson.ToJSON PatchedNotificationRequest
