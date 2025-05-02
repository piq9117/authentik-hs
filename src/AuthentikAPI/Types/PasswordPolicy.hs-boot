module AuthentikAPI.Types.PasswordPolicy where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PasswordPolicy
instance Show PasswordPolicy
instance Eq PasswordPolicy
instance Data.Aeson.FromJSON PasswordPolicy
instance Data.Aeson.ToJSON PasswordPolicy
