module AuthentikAPI.Types.UserLoginStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserLoginStage
instance Show UserLoginStage
instance Eq UserLoginStage
instance Data.Aeson.FromJSON UserLoginStage
instance Data.Aeson.ToJSON UserLoginStage
