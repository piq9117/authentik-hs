module AuthentikAPI.Types.LicenseRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LicenseRequest
instance Show LicenseRequest
instance Eq LicenseRequest
instance Data.Aeson.FromJSON LicenseRequest
instance Data.Aeson.ToJSON LicenseRequest
