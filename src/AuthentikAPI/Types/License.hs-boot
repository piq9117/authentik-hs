module AuthentikAPI.Types.License where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data License
instance Show License
instance Eq License
instance Data.Aeson.FromJSON License
instance Data.Aeson.ToJSON License
