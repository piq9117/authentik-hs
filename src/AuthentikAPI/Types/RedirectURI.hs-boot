module AuthentikAPI.Types.RedirectURI where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data RedirectURI
instance Show RedirectURI
instance Eq RedirectURI
instance Data.Aeson.FromJSON RedirectURI
instance Data.Aeson.ToJSON RedirectURI
