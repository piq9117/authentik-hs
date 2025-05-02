module AuthentikAPI.Types.GroupMember where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data GroupMember
instance Show GroupMember
instance Eq GroupMember
instance Data.Aeson.FromJSON GroupMember
instance Data.Aeson.ToJSON GroupMember
