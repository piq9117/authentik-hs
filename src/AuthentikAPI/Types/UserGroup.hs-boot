module AuthentikAPI.Types.UserGroup where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserGroup
instance Show UserGroup
instance Eq UserGroup
instance Data.Aeson.FromJSON UserGroup
instance Data.Aeson.ToJSON UserGroup
