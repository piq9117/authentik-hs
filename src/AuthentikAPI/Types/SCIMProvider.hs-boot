module AuthentikAPI.Types.SCIMProvider where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SCIMProvider
instance Show SCIMProvider
instance Eq SCIMProvider
instance Data.Aeson.FromJSON SCIMProvider
instance Data.Aeson.ToJSON SCIMProvider
