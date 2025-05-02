module AuthentikAPI.Types.FlowInspection where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data FlowInspection
instance Show FlowInspection
instance Eq FlowInspection
instance Data.Aeson.FromJSON FlowInspection
instance Data.Aeson.ToJSON FlowInspection
