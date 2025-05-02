module AuthentikAPI.Types.UserWriteStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserWriteStage
instance Show UserWriteStage
instance Eq UserWriteStage
instance Data.Aeson.FromJSON UserWriteStage
instance Data.Aeson.ToJSON UserWriteStage
