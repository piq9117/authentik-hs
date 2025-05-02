module AuthentikAPI.Types.PlexSourceRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PlexSourceRequest
instance Show PlexSourceRequest
instance Eq PlexSourceRequest
instance Data.Aeson.FromJSON PlexSourceRequest
instance Data.Aeson.ToJSON PlexSourceRequest
