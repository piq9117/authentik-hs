module AuthentikAPI.Types.EventActions where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data EventActions
instance Show EventActions
instance Eq EventActions
instance Data.Aeson.FromJSON EventActions
instance Data.Aeson.ToJSON EventActions
