module AuthentikAPI.Types.UserSelfGroups where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserSelfGroups
instance Show UserSelfGroups
instance Eq UserSelfGroups
instance Data.Aeson.FromJSON UserSelfGroups
instance Data.Aeson.ToJSON UserSelfGroups
