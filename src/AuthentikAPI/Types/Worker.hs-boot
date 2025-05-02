module AuthentikAPI.Types.Worker where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Worker
instance Show Worker
instance Eq Worker
instance Data.Aeson.FromJSON Worker
instance Data.Aeson.ToJSON Worker
