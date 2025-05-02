module AuthentikAPI.Types.UserMetrics where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserMetrics
instance Show UserMetrics
instance Eq UserMetrics
instance Data.Aeson.FromJSON UserMetrics
instance Data.Aeson.ToJSON UserMetrics
