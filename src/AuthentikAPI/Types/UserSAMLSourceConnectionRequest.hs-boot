module AuthentikAPI.Types.UserSAMLSourceConnectionRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserSAMLSourceConnectionRequest
instance Show UserSAMLSourceConnectionRequest
instance Eq UserSAMLSourceConnectionRequest
instance Data.Aeson.FromJSON UserSAMLSourceConnectionRequest
instance Data.Aeson.ToJSON UserSAMLSourceConnectionRequest
