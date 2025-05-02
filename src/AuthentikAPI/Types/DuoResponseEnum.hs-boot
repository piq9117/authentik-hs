module AuthentikAPI.Types.DuoResponseEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DuoResponseEnum
instance Show DuoResponseEnum
instance Eq DuoResponseEnum
instance Data.Aeson.FromJSON DuoResponseEnum
instance Data.Aeson.ToJSON DuoResponseEnum
