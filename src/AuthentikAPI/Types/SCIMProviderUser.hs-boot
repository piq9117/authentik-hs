module AuthentikAPI.Types.SCIMProviderUser where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SCIMProviderUser
instance Show SCIMProviderUser
instance Eq SCIMProviderUser
instance Data.Aeson.FromJSON SCIMProviderUser
instance Data.Aeson.ToJSON SCIMProviderUser
data SCIMProviderUserUserObj'
instance Show SCIMProviderUserUserObj'
instance Eq SCIMProviderUserUserObj'
instance Data.Aeson.FromJSON SCIMProviderUserUserObj'
instance Data.Aeson.ToJSON SCIMProviderUserUserObj'
