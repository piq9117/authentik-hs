module AuthentikAPI.Types.LicenseSummary where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LicenseSummary
instance Show LicenseSummary
instance Eq LicenseSummary
instance Data.Aeson.FromJSON LicenseSummary
instance Data.Aeson.ToJSON LicenseSummary
