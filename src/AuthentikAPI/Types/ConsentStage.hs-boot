module AuthentikAPI.Types.ConsentStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ConsentStage
instance Show ConsentStage
instance Eq ConsentStage
instance Data.Aeson.FromJSON ConsentStage
instance Data.Aeson.ToJSON ConsentStage
