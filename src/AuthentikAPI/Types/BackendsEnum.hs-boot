module AuthentikAPI.Types.BackendsEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data BackendsEnum
instance Show BackendsEnum
instance Eq BackendsEnum
instance Data.Aeson.FromJSON BackendsEnum
instance Data.Aeson.ToJSON BackendsEnum
