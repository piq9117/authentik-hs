module AuthentikAPI.Types.SettingsRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SettingsRequest
instance Show SettingsRequest
instance Eq SettingsRequest
instance Data.Aeson.FromJSON SettingsRequest
instance Data.Aeson.ToJSON SettingsRequest
