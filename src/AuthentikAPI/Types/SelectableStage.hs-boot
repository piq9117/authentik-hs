module AuthentikAPI.Types.SelectableStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SelectableStage
instance Show SelectableStage
instance Eq SelectableStage
instance Data.Aeson.FromJSON SelectableStage
instance Data.Aeson.ToJSON SelectableStage
