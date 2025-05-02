module AuthentikAPI.Types.ProviderEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ProviderEnum
instance Show ProviderEnum
instance Eq ProviderEnum
instance Data.Aeson.FromJSON ProviderEnum
instance Data.Aeson.ToJSON ProviderEnum
