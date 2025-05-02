module AuthentikAPI.Types.DenyStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DenyStage
instance Show DenyStage
instance Eq DenyStage
instance Data.Aeson.FromJSON DenyStage
instance Data.Aeson.ToJSON DenyStage
