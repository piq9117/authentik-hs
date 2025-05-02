module AuthentikAPI.Types.GenericError where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data GenericError
instance Show GenericError
instance Eq GenericError
instance Data.Aeson.FromJSON GenericError
instance Data.Aeson.ToJSON GenericError
