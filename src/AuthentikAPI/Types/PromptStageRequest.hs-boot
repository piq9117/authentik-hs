module AuthentikAPI.Types.PromptStageRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PromptStageRequest
instance Show PromptStageRequest
instance Eq PromptStageRequest
instance Data.Aeson.FromJSON PromptStageRequest
instance Data.Aeson.ToJSON PromptStageRequest
