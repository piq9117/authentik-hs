module AuthentikAPI.Types.SCIMSourceRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SCIMSourceRequest
instance Show SCIMSourceRequest
instance Eq SCIMSourceRequest
instance Data.Aeson.FromJSON SCIMSourceRequest
instance Data.Aeson.ToJSON SCIMSourceRequest
