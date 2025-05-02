module AuthentikAPI.Types.CountryCodeEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data CountryCodeEnum
instance Show CountryCodeEnum
instance Eq CountryCodeEnum
instance Data.Aeson.FromJSON CountryCodeEnum
instance Data.Aeson.ToJSON CountryCodeEnum
