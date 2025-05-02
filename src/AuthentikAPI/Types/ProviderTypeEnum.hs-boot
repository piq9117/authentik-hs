module AuthentikAPI.Types.ProviderTypeEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ProviderTypeEnum
instance Show ProviderTypeEnum
instance Eq ProviderTypeEnum
instance Data.Aeson.FromJSON ProviderTypeEnum
instance Data.Aeson.ToJSON ProviderTypeEnum
