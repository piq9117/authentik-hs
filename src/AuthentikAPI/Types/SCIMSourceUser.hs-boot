module AuthentikAPI.Types.SCIMSourceUser where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SCIMSourceUser
instance Show SCIMSourceUser
instance Eq SCIMSourceUser
instance Data.Aeson.FromJSON SCIMSourceUser
instance Data.Aeson.ToJSON SCIMSourceUser
data SCIMSourceUserUserObj'
instance Show SCIMSourceUserUserObj'
instance Eq SCIMSourceUserUserObj'
instance Data.Aeson.FromJSON SCIMSourceUserUserObj'
instance Data.Aeson.ToJSON SCIMSourceUserUserObj'
