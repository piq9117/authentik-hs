module AuthentikAPI.Types.ModelRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ModelRequestVariants
instance Show ModelRequestVariants
instance Eq ModelRequestVariants
instance Data.Aeson.FromJSON ModelRequestVariants
instance Data.Aeson.ToJSON ModelRequestVariants
type ModelRequest = ModelRequestVariants
