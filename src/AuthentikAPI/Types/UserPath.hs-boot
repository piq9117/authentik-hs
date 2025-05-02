module AuthentikAPI.Types.UserPath where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserPath
instance Show UserPath
instance Eq UserPath
instance Data.Aeson.FromJSON UserPath
instance Data.Aeson.ToJSON UserPath
