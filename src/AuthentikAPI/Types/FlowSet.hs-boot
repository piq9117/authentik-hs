module AuthentikAPI.Types.FlowSet where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data FlowSet
instance Show FlowSet
instance Eq FlowSet
instance Data.Aeson.FromJSON FlowSet
instance Data.Aeson.ToJSON FlowSet
