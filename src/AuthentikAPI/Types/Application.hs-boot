module AuthentikAPI.Types.Application where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Application
instance Show Application
instance Eq Application
instance Data.Aeson.FromJSON Application
instance Data.Aeson.ToJSON Application
data ApplicationProviderObj'
instance Show ApplicationProviderObj'
instance Eq ApplicationProviderObj'
instance Data.Aeson.FromJSON ApplicationProviderObj'
instance Data.Aeson.ToJSON ApplicationProviderObj'
