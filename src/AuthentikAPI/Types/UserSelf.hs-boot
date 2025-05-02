module AuthentikAPI.Types.UserSelf where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserSelf
instance Show UserSelf
instance Eq UserSelf
instance Data.Aeson.FromJSON UserSelf
instance Data.Aeson.ToJSON UserSelf
