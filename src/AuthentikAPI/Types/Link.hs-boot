module AuthentikAPI.Types.Link where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Link
instance Show Link
instance Eq Link
instance Data.Aeson.FromJSON Link
instance Data.Aeson.ToJSON Link
