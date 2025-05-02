module AuthentikAPI.Types.EmailChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data EmailChallenge
instance Show EmailChallenge
instance Eq EmailChallenge
instance Data.Aeson.FromJSON EmailChallenge
instance Data.Aeson.ToJSON EmailChallenge
