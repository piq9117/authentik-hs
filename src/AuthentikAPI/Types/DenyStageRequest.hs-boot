module AuthentikAPI.Types.DenyStageRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DenyStageRequest
instance Show DenyStageRequest
instance Eq DenyStageRequest
instance Data.Aeson.FromJSON DenyStageRequest
instance Data.Aeson.ToJSON DenyStageRequest
