module AuthentikAPI.Types.PropertyMapping where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PropertyMapping
instance Show PropertyMapping
instance Eq PropertyMapping
instance Data.Aeson.FromJSON PropertyMapping
instance Data.Aeson.ToJSON PropertyMapping
