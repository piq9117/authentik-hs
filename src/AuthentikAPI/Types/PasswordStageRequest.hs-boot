module AuthentikAPI.Types.PasswordStageRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PasswordStageRequest
instance Show PasswordStageRequest
instance Eq PasswordStageRequest
instance Data.Aeson.FromJSON PasswordStageRequest
instance Data.Aeson.ToJSON PasswordStageRequest
