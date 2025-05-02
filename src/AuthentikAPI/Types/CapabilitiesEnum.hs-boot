module AuthentikAPI.Types.CapabilitiesEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data CapabilitiesEnum
instance Show CapabilitiesEnum
instance Eq CapabilitiesEnum
instance Data.Aeson.FromJSON CapabilitiesEnum
instance Data.Aeson.ToJSON CapabilitiesEnum
