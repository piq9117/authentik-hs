module AuthentikAPI.Types.PromptChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PromptChallenge
instance Show PromptChallenge
instance Eq PromptChallenge
instance Data.Aeson.FromJSON PromptChallenge
instance Data.Aeson.ToJSON PromptChallenge
