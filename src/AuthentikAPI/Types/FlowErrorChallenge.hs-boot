module AuthentikAPI.Types.FlowErrorChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data FlowErrorChallenge
instance Show FlowErrorChallenge
instance Eq FlowErrorChallenge
instance Data.Aeson.FromJSON FlowErrorChallenge
instance Data.Aeson.ToJSON FlowErrorChallenge
