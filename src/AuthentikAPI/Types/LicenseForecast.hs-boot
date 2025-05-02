module AuthentikAPI.Types.LicenseForecast where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LicenseForecast
instance Show LicenseForecast
instance Eq LicenseForecast
instance Data.Aeson.FromJSON LicenseForecast
instance Data.Aeson.ToJSON LicenseForecast
