module AuthentikAPI.Types.CaptchaStageRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data CaptchaStageRequest
instance Show CaptchaStageRequest
instance Eq CaptchaStageRequest
instance Data.Aeson.FromJSON CaptchaStageRequest
instance Data.Aeson.ToJSON CaptchaStageRequest
