module AuthentikAPI.Types.ServiceConnection where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ServiceConnection
instance Show ServiceConnection
instance Eq ServiceConnection
instance Data.Aeson.FromJSON ServiceConnection
instance Data.Aeson.ToJSON ServiceConnection
