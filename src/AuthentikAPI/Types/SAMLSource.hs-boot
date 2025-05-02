module AuthentikAPI.Types.SAMLSource where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SAMLSource
instance Show SAMLSource
instance Eq SAMLSource
instance Data.Aeson.FromJSON SAMLSource
instance Data.Aeson.ToJSON SAMLSource
