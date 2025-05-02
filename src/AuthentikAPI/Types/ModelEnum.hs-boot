module AuthentikAPI.Types.ModelEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ModelEnum
instance Show ModelEnum
instance Eq ModelEnum
instance Data.Aeson.FromJSON ModelEnum
instance Data.Aeson.ToJSON ModelEnum
