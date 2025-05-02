module AuthentikAPI.Types.EventTopPerUser where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data EventTopPerUser
instance Show EventTopPerUser
instance Eq EventTopPerUser
instance Data.Aeson.FromJSON EventTopPerUser
instance Data.Aeson.ToJSON EventTopPerUser
