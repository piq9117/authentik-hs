module AuthentikAPI.Types.ConnectionToken where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ConnectionToken
instance Show ConnectionToken
instance Eq ConnectionToken
instance Data.Aeson.FromJSON ConnectionToken
instance Data.Aeson.ToJSON ConnectionToken
data ConnectionTokenEndpointObj'
instance Show ConnectionTokenEndpointObj'
instance Eq ConnectionTokenEndpointObj'
instance Data.Aeson.FromJSON ConnectionTokenEndpointObj'
instance Data.Aeson.ToJSON ConnectionTokenEndpointObj'
data ConnectionTokenEndpointObj'ProviderObj'
instance Show ConnectionTokenEndpointObj'ProviderObj'
instance Eq ConnectionTokenEndpointObj'ProviderObj'
instance Data.Aeson.FromJSON ConnectionTokenEndpointObj'ProviderObj'
instance Data.Aeson.ToJSON ConnectionTokenEndpointObj'ProviderObj'
data ConnectionTokenProviderObj'
instance Show ConnectionTokenProviderObj'
instance Eq ConnectionTokenProviderObj'
instance Data.Aeson.FromJSON ConnectionTokenProviderObj'
instance Data.Aeson.ToJSON ConnectionTokenProviderObj'
data ConnectionTokenUser'
instance Show ConnectionTokenUser'
instance Eq ConnectionTokenUser'
instance Data.Aeson.FromJSON ConnectionTokenUser'
instance Data.Aeson.ToJSON ConnectionTokenUser'
