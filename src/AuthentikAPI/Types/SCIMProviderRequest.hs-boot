module AuthentikAPI.Types.SCIMProviderRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SCIMProviderRequest
instance Show SCIMProviderRequest
instance Eq SCIMProviderRequest
instance Data.Aeson.FromJSON SCIMProviderRequest
instance Data.Aeson.ToJSON SCIMProviderRequest
