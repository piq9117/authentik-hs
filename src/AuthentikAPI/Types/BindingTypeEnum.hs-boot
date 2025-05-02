module AuthentikAPI.Types.BindingTypeEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data BindingTypeEnum
instance Show BindingTypeEnum
instance Eq BindingTypeEnum
instance Data.Aeson.FromJSON BindingTypeEnum
instance Data.Aeson.ToJSON BindingTypeEnum
