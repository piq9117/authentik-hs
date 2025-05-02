module AuthentikAPI.Types.Flow where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Flow
instance Show Flow
instance Eq Flow
instance Data.Aeson.FromJSON Flow
instance Data.Aeson.ToJSON Flow
