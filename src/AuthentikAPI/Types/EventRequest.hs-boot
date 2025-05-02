module AuthentikAPI.Types.EventRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data EventRequest
instance Show EventRequest
instance Eq EventRequest
instance Data.Aeson.FromJSON EventRequest
instance Data.Aeson.ToJSON EventRequest
