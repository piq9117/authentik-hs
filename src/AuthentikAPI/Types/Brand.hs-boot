module AuthentikAPI.Types.Brand where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Brand
instance Show Brand
instance Eq Brand
instance Data.Aeson.FromJSON Brand
instance Data.Aeson.ToJSON Brand
