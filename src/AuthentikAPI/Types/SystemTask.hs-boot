module AuthentikAPI.Types.SystemTask where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SystemTask
instance Show SystemTask
instance Eq SystemTask
instance Data.Aeson.FromJSON SystemTask
instance Data.Aeson.ToJSON SystemTask
