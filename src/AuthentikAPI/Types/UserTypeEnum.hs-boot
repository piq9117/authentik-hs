module AuthentikAPI.Types.UserTypeEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserTypeEnum
instance Show UserTypeEnum
instance Eq UserTypeEnum
instance Data.Aeson.FromJSON UserTypeEnum
instance Data.Aeson.ToJSON UserTypeEnum
