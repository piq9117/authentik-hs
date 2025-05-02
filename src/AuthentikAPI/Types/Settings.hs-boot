module AuthentikAPI.Types.Settings where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Settings
instance Show Settings
instance Eq Settings
instance Data.Aeson.FromJSON Settings
instance Data.Aeson.ToJSON Settings
