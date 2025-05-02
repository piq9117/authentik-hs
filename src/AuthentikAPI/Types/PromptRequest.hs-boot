module AuthentikAPI.Types.PromptRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PromptRequest
instance Show PromptRequest
instance Eq PromptRequest
instance Data.Aeson.FromJSON PromptRequest
instance Data.Aeson.ToJSON PromptRequest
