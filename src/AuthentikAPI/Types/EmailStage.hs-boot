module AuthentikAPI.Types.EmailStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data EmailStage
instance Show EmailStage
instance Eq EmailStage
instance Data.Aeson.FromJSON EmailStage
instance Data.Aeson.ToJSON EmailStage
