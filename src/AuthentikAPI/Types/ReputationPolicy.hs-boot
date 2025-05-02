module AuthentikAPI.Types.ReputationPolicy where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ReputationPolicy
instance Show ReputationPolicy
instance Eq ReputationPolicy
instance Data.Aeson.FromJSON ReputationPolicy
instance Data.Aeson.ToJSON ReputationPolicy
