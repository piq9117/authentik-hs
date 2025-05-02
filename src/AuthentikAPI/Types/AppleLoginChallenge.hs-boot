module AuthentikAPI.Types.AppleLoginChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data AppleLoginChallenge
instance Show AppleLoginChallenge
instance Eq AppleLoginChallenge
instance Data.Aeson.FromJSON AppleLoginChallenge
instance Data.Aeson.ToJSON AppleLoginChallenge
