module AuthentikAPI.Types.Stage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Stage
instance Show Stage
instance Eq Stage
instance Data.Aeson.FromJSON Stage
instance Data.Aeson.ToJSON Stage
