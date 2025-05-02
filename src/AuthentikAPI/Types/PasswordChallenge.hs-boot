module AuthentikAPI.Types.PasswordChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PasswordChallenge
instance Show PasswordChallenge
instance Eq PasswordChallenge
instance Data.Aeson.FromJSON PasswordChallenge
instance Data.Aeson.ToJSON PasswordChallenge
