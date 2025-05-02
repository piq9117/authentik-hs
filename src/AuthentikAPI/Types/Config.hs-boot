module AuthentikAPI.Types.Config where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Config
instance Show Config
instance Eq Config
instance Data.Aeson.FromJSON Config
instance Data.Aeson.ToJSON Config
