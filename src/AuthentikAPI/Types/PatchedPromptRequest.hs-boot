module AuthentikAPI.Types.PatchedPromptRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PatchedPromptRequest
instance Show PatchedPromptRequest
instance Eq PatchedPromptRequest
instance Data.Aeson.FromJSON PatchedPromptRequest
instance Data.Aeson.ToJSON PatchedPromptRequest
