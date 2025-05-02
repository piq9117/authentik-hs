module AuthentikAPI.Types.Version where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Version
instance Show Version
instance Eq Version
instance Data.Aeson.FromJSON Version
instance Data.Aeson.ToJSON Version
