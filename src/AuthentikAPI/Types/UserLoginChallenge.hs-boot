module AuthentikAPI.Types.UserLoginChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserLoginChallenge
instance Show UserLoginChallenge
instance Eq UserLoginChallenge
instance Data.Aeson.FromJSON UserLoginChallenge
instance Data.Aeson.ToJSON UserLoginChallenge
