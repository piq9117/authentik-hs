module AuthentikAPI.Types.OAuthDeviceCodeChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data OAuthDeviceCodeChallenge
instance Show OAuthDeviceCodeChallenge
instance Eq OAuthDeviceCodeChallenge
instance Data.Aeson.FromJSON OAuthDeviceCodeChallenge
instance Data.Aeson.ToJSON OAuthDeviceCodeChallenge
