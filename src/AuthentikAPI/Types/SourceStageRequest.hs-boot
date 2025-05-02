module AuthentikAPI.Types.SourceStageRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SourceStageRequest
instance Show SourceStageRequest
instance Eq SourceStageRequest
instance Data.Aeson.FromJSON SourceStageRequest
instance Data.Aeson.ToJSON SourceStageRequest
