module AuthentikAPI.Types.ConsentChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ConsentChallenge
instance Show ConsentChallenge
instance Eq ConsentChallenge
instance Data.Aeson.FromJSON ConsentChallenge
instance Data.Aeson.ToJSON ConsentChallenge
