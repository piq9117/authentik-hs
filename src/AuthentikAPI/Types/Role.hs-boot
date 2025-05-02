module AuthentikAPI.Types.Role where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Role
instance Show Role
instance Eq Role
instance Data.Aeson.FromJSON Role
instance Data.Aeson.ToJSON Role
