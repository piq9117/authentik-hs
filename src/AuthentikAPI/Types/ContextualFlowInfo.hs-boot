module AuthentikAPI.Types.ContextualFlowInfo where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ContextualFlowInfo
instance Show ContextualFlowInfo
instance Eq ContextualFlowInfo
instance Data.Aeson.FromJSON ContextualFlowInfo
instance Data.Aeson.ToJSON ContextualFlowInfo
