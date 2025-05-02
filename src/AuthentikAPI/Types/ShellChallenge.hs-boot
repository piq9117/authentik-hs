module AuthentikAPI.Types.ShellChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ShellChallenge
instance Show ShellChallenge
instance Eq ShellChallenge
instance Data.Aeson.FromJSON ShellChallenge
instance Data.Aeson.ToJSON ShellChallenge
