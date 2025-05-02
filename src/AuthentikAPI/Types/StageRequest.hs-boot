module AuthentikAPI.Types.StageRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data StageRequest
instance Show StageRequest
instance Eq StageRequest
instance Data.Aeson.FromJSON StageRequest
instance Data.Aeson.ToJSON StageRequest
