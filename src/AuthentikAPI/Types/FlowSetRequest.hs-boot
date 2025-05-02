module AuthentikAPI.Types.FlowSetRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data FlowSetRequest
instance Show FlowSetRequest
instance Eq FlowSetRequest
instance Data.Aeson.FromJSON FlowSetRequest
instance Data.Aeson.ToJSON FlowSetRequest
