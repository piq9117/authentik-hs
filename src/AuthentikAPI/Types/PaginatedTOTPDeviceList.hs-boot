module AuthentikAPI.Types.PaginatedTOTPDeviceList where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PaginatedTOTPDeviceList
instance Show PaginatedTOTPDeviceList
instance Eq PaginatedTOTPDeviceList
instance Data.Aeson.FromJSON PaginatedTOTPDeviceList
instance Data.Aeson.ToJSON PaginatedTOTPDeviceList
