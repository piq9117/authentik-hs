module AuthentikAPI.Types.ApplicationRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ApplicationRequest
instance Show ApplicationRequest
instance Eq ApplicationRequest
instance Data.Aeson.FromJSON ApplicationRequest
instance Data.Aeson.ToJSON ApplicationRequest
