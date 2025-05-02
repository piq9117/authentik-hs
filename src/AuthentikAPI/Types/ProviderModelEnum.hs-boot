module AuthentikAPI.Types.ProviderModelEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ProviderModelEnum
instance Show ProviderModelEnum
instance Eq ProviderModelEnum
instance Data.Aeson.FromJSON ProviderModelEnum
instance Data.Aeson.ToJSON ProviderModelEnum
