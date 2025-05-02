module AuthentikAPI.Types.StagePrompt where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data StagePrompt
instance Show StagePrompt
instance Eq StagePrompt
instance Data.Aeson.FromJSON StagePrompt
instance Data.Aeson.ToJSON StagePrompt
