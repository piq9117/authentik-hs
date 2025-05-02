module AuthentikAPI.Types.GeoIPPolicy where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data GeoIPPolicy
instance Show GeoIPPolicy
instance Eq GeoIPPolicy
instance Data.Aeson.FromJSON GeoIPPolicy
instance Data.Aeson.ToJSON GeoIPPolicy
