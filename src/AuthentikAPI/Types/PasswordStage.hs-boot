module AuthentikAPI.Types.PasswordStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PasswordStage
instance Show PasswordStage
instance Eq PasswordStage
instance Data.Aeson.FromJSON PasswordStage
instance Data.Aeson.ToJSON PasswordStage
