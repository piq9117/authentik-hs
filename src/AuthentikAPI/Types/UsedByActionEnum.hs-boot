module AuthentikAPI.Types.UsedByActionEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UsedByActionEnum
instance Show UsedByActionEnum
instance Eq UsedByActionEnum
instance Data.Aeson.FromJSON UsedByActionEnum
instance Data.Aeson.ToJSON UsedByActionEnum
