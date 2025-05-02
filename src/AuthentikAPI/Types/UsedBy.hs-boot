module AuthentikAPI.Types.UsedBy where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UsedBy
instance Show UsedBy
instance Eq UsedBy
instance Data.Aeson.FromJSON UsedBy
instance Data.Aeson.ToJSON UsedBy
