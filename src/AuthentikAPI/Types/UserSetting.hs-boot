module AuthentikAPI.Types.UserSetting where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserSetting
instance Show UserSetting
instance Eq UserSetting
instance Data.Aeson.FromJSON UserSetting
instance Data.Aeson.ToJSON UserSetting
