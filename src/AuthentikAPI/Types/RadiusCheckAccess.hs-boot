module AuthentikAPI.Types.RadiusCheckAccess where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data RadiusCheckAccess
instance Show RadiusCheckAccess
instance Eq RadiusCheckAccess
instance Data.Aeson.FromJSON RadiusCheckAccess
instance Data.Aeson.ToJSON RadiusCheckAccess
