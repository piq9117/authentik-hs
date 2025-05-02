module AuthentikAPI.Types.Prompt where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Prompt
instance Show Prompt
instance Eq Prompt
instance Data.Aeson.FromJSON Prompt
instance Data.Aeson.ToJSON Prompt
