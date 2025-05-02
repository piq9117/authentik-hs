module AuthentikAPI.Types.ProtocolEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ProtocolEnum
instance Show ProtocolEnum
instance Eq ProtocolEnum
instance Data.Aeson.FromJSON ProtocolEnum
instance Data.Aeson.ToJSON ProtocolEnum
