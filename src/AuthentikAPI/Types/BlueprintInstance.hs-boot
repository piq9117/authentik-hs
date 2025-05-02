module AuthentikAPI.Types.BlueprintInstance where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data BlueprintInstance
instance Show BlueprintInstance
instance Eq BlueprintInstance
instance Data.Aeson.FromJSON BlueprintInstance
instance Data.Aeson.ToJSON BlueprintInstance
