module AuthentikAPI.Types.RedirectChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data RedirectChallenge
instance Show RedirectChallenge
instance Eq RedirectChallenge
instance Data.Aeson.FromJSON RedirectChallenge
instance Data.Aeson.ToJSON RedirectChallenge
