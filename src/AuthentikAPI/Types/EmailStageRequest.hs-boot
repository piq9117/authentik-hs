module AuthentikAPI.Types.EmailStageRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data EmailStageRequest
instance Show EmailStageRequest
instance Eq EmailStageRequest
instance Data.Aeson.FromJSON EmailStageRequest
instance Data.Aeson.ToJSON EmailStageRequest
