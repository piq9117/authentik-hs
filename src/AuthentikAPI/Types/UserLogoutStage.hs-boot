module AuthentikAPI.Types.UserLogoutStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserLogoutStage
instance Show UserLogoutStage
instance Eq UserLogoutStage
instance Data.Aeson.FromJSON UserLogoutStage
instance Data.Aeson.ToJSON UserLogoutStage
