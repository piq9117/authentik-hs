module AuthentikAPI.Types.SessionUser where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SessionUser
instance Show SessionUser
instance Eq SessionUser
instance Data.Aeson.FromJSON SessionUser
instance Data.Aeson.ToJSON SessionUser
