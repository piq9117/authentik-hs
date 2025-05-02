module AuthentikAPI.Types.ScopeMappingRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ScopeMappingRequest
instance Show ScopeMappingRequest
instance Eq ScopeMappingRequest
instance Data.Aeson.FromJSON ScopeMappingRequest
instance Data.Aeson.ToJSON ScopeMappingRequest
