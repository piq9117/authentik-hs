module AuthentikAPI.Types.LoginMetrics where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LoginMetrics
instance Show LoginMetrics
instance Eq LoginMetrics
instance Data.Aeson.FromJSON LoginMetrics
instance Data.Aeson.ToJSON LoginMetrics
