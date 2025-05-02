module AuthentikAPI.Types.UserFieldsEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserFieldsEnum
instance Show UserFieldsEnum
instance Eq UserFieldsEnum
instance Data.Aeson.FromJSON UserFieldsEnum
instance Data.Aeson.ToJSON UserFieldsEnum
