module AuthentikAPI.Types.AuthModeEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data AuthModeEnum
instance Show AuthModeEnum
instance Eq AuthModeEnum
instance Data.Aeson.FromJSON AuthModeEnum
instance Data.Aeson.ToJSON AuthModeEnum
