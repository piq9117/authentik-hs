module AuthentikAPI.Types.FrameChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data FrameChallenge
instance Show FrameChallenge
instance Eq FrameChallenge
instance Data.Aeson.FromJSON FrameChallenge
instance Data.Aeson.ToJSON FrameChallenge
