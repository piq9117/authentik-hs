module AuthentikAPI.Types.LogEvent where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LogEvent
instance Show LogEvent
instance Eq LogEvent
instance Data.Aeson.FromJSON LogEvent
instance Data.Aeson.ToJSON LogEvent
