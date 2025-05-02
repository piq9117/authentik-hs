module AuthentikAPI.Types.Coordinate where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Coordinate
instance Show Coordinate
instance Eq Coordinate
instance Data.Aeson.FromJSON Coordinate
instance Data.Aeson.ToJSON Coordinate
