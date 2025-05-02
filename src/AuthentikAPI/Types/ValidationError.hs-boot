module AuthentikAPI.Types.ValidationError where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ValidationError
instance Show ValidationError
instance Eq ValidationError
instance Data.Aeson.FromJSON ValidationError
instance Data.Aeson.ToJSON ValidationError
