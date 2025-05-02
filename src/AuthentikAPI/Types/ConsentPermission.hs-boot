module AuthentikAPI.Types.ConsentPermission where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ConsentPermission
instance Show ConsentPermission
instance Eq ConsentPermission
instance Data.Aeson.FromJSON ConsentPermission
instance Data.Aeson.ToJSON ConsentPermission
