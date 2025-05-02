module AuthentikAPI.Types.ConsentStageRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ConsentStageRequest
instance Show ConsentStageRequest
instance Eq ConsentStageRequest
instance Data.Aeson.FromJSON ConsentStageRequest
instance Data.Aeson.ToJSON ConsentStageRequest
