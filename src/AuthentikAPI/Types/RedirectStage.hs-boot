module AuthentikAPI.Types.RedirectStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data RedirectStage
instance Show RedirectStage
instance Eq RedirectStage
instance Data.Aeson.FromJSON RedirectStage
instance Data.Aeson.ToJSON RedirectStage
