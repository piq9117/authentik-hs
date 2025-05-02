module AuthentikAPI.Types.FlowRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data FlowRequest
instance Show FlowRequest
instance Eq FlowRequest
instance Data.Aeson.FromJSON FlowRequest
instance Data.Aeson.ToJSON FlowRequest
