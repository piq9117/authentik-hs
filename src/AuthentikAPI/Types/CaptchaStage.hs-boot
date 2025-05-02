module AuthentikAPI.Types.CaptchaStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data CaptchaStage
instance Show CaptchaStage
instance Eq CaptchaStage
instance Data.Aeson.FromJSON CaptchaStage
instance Data.Aeson.ToJSON CaptchaStage
