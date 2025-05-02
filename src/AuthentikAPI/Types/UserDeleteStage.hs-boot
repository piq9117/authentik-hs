module AuthentikAPI.Types.UserDeleteStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserDeleteStage
instance Show UserDeleteStage
instance Eq UserDeleteStage
instance Data.Aeson.FromJSON UserDeleteStage
instance Data.Aeson.ToJSON UserDeleteStage
