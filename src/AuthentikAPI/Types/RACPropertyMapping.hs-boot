module AuthentikAPI.Types.RACPropertyMapping where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data RACPropertyMapping
instance Show RACPropertyMapping
instance Eq RACPropertyMapping
instance Data.Aeson.FromJSON RACPropertyMapping
instance Data.Aeson.ToJSON RACPropertyMapping
