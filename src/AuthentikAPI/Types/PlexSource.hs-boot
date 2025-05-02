module AuthentikAPI.Types.PlexSource where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PlexSource
instance Show PlexSource
instance Eq PlexSource
instance Data.Aeson.FromJSON PlexSource
instance Data.Aeson.ToJSON PlexSource
