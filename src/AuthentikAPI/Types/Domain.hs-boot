module AuthentikAPI.Types.Domain where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Domain
instance Show Domain
instance Eq Domain
instance Data.Aeson.FromJSON Domain
instance Data.Aeson.ToJSON Domain
