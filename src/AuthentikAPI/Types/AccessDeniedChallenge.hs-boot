module AuthentikAPI.Types.AccessDeniedChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data AccessDeniedChallenge
instance Show AccessDeniedChallenge
instance Eq AccessDeniedChallenge
instance Data.Aeson.FromJSON AccessDeniedChallenge
instance Data.Aeson.ToJSON AccessDeniedChallenge
