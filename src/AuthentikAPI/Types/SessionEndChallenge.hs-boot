module AuthentikAPI.Types.SessionEndChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SessionEndChallenge
instance Show SessionEndChallenge
instance Eq SessionEndChallenge
instance Data.Aeson.FromJSON SessionEndChallenge
instance Data.Aeson.ToJSON SessionEndChallenge
