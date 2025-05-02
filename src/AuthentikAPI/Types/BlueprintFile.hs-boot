module AuthentikAPI.Types.BlueprintFile where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data BlueprintFile
instance Show BlueprintFile
instance Eq BlueprintFile
instance Data.Aeson.FromJSON BlueprintFile
instance Data.Aeson.ToJSON BlueprintFile
data BlueprintFileMeta'
instance Show BlueprintFileMeta'
instance Eq BlueprintFileMeta'
instance Data.Aeson.FromJSON BlueprintFileMeta'
instance Data.Aeson.ToJSON BlueprintFileMeta'
