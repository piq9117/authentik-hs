module AuthentikAPI.Types.RACProviderRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data RACProviderRequest
instance Show RACProviderRequest
instance Eq RACProviderRequest
instance Data.Aeson.FromJSON RACProviderRequest
instance Data.Aeson.ToJSON RACProviderRequest
