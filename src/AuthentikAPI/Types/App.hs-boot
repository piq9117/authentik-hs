module AuthentikAPI.Types.App where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data App
instance Show App
instance Eq App
instance Data.Aeson.FromJSON App
instance Data.Aeson.ToJSON App
