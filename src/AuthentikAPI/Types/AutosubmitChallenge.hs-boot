module AuthentikAPI.Types.AutosubmitChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data AutosubmitChallenge
instance Show AutosubmitChallenge
instance Eq AutosubmitChallenge
instance Data.Aeson.FromJSON AutosubmitChallenge
instance Data.Aeson.ToJSON AutosubmitChallenge
