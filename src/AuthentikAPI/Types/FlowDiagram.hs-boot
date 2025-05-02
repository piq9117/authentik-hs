module AuthentikAPI.Types.FlowDiagram where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data FlowDiagram
instance Show FlowDiagram
instance Eq FlowDiagram
instance Data.Aeson.FromJSON FlowDiagram
instance Data.Aeson.ToJSON FlowDiagram
