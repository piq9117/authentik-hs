module AuthentikAPI.Types.Event where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Event
instance Show Event
instance Eq Event
instance Data.Aeson.FromJSON Event
instance Data.Aeson.ToJSON Event
