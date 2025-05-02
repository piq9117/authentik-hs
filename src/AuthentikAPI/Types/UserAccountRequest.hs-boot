module AuthentikAPI.Types.UserAccountRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserAccountRequest
instance Show UserAccountRequest
instance Eq UserAccountRequest
instance Data.Aeson.FromJSON UserAccountRequest
instance Data.Aeson.ToJSON UserAccountRequest
