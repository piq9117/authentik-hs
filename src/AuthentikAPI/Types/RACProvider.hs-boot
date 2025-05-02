module AuthentikAPI.Types.RACProvider where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data RACProvider
instance Show RACProvider
instance Eq RACProvider
instance Data.Aeson.FromJSON RACProvider
instance Data.Aeson.ToJSON RACProvider
