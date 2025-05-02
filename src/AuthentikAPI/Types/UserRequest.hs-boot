module AuthentikAPI.Types.UserRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserRequest
instance Show UserRequest
instance Eq UserRequest
instance Data.Aeson.FromJSON UserRequest
instance Data.Aeson.ToJSON UserRequest
