module AuthentikAPI.Types.SAMLMetadata where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SAMLMetadata
instance Show SAMLMetadata
instance Eq SAMLMetadata
instance Data.Aeson.FromJSON SAMLMetadata
instance Data.Aeson.ToJSON SAMLMetadata
