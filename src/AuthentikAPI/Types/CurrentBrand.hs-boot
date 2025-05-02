module AuthentikAPI.Types.CurrentBrand where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data CurrentBrand
instance Show CurrentBrand
instance Eq CurrentBrand
instance Data.Aeson.FromJSON CurrentBrand
instance Data.Aeson.ToJSON CurrentBrand
