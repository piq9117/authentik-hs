module AuthentikAPI.Types.BrandRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data BrandRequest
instance Show BrandRequest
instance Eq BrandRequest
instance Data.Aeson.FromJSON BrandRequest
instance Data.Aeson.ToJSON BrandRequest
