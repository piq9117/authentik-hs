module AuthentikAPI.Types.LicenseFlagsEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LicenseFlagsEnum
instance Show LicenseFlagsEnum
instance Eq LicenseFlagsEnum
instance Data.Aeson.FromJSON LicenseFlagsEnum
instance Data.Aeson.ToJSON LicenseFlagsEnum
