module AuthentikAPI.Types.CaptchaChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data CaptchaChallenge
instance Show CaptchaChallenge
instance Eq CaptchaChallenge
instance Data.Aeson.FromJSON CaptchaChallenge
instance Data.Aeson.ToJSON CaptchaChallenge
