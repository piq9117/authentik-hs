module AuthentikAPI.Types.DomainRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DomainRequest
instance Show DomainRequest
instance Eq DomainRequest
instance Data.Aeson.FromJSON DomainRequest
instance Data.Aeson.ToJSON DomainRequest
