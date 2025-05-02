module AuthentikAPI.Types.AuthTypeEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data AuthTypeEnum
instance Show AuthTypeEnum
instance Eq AuthTypeEnum
instance Data.Aeson.FromJSON AuthTypeEnum
instance Data.Aeson.ToJSON AuthTypeEnum
