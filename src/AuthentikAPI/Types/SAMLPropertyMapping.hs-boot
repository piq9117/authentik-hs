module AuthentikAPI.Types.SAMLPropertyMapping where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SAMLPropertyMapping
instance Show SAMLPropertyMapping
instance Eq SAMLPropertyMapping
instance Data.Aeson.FromJSON SAMLPropertyMapping
instance Data.Aeson.ToJSON SAMLPropertyMapping
