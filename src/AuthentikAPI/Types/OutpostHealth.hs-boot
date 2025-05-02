module AuthentikAPI.Types.OutpostHealth where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data OutpostHealth
instance Show OutpostHealth
instance Eq OutpostHealth
instance Data.Aeson.FromJSON OutpostHealth
instance Data.Aeson.ToJSON OutpostHealth
