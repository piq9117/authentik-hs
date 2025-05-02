module AuthentikAPI.Types.PromptStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PromptStage
instance Show PromptStage
instance Eq PromptStage
instance Data.Aeson.FromJSON PromptStage
instance Data.Aeson.ToJSON PromptStage
