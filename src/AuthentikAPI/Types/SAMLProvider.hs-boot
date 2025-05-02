module AuthentikAPI.Types.SAMLProvider where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SAMLProvider
instance Show SAMLProvider
instance Eq SAMLProvider
instance Data.Aeson.FromJSON SAMLProvider
instance Data.Aeson.ToJSON SAMLProvider
