module AuthentikAPI.Types.GroupRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data GroupRequest
instance Show GroupRequest
instance Eq GroupRequest
instance Data.Aeson.FromJSON GroupRequest
instance Data.Aeson.ToJSON GroupRequest
