module AuthentikAPI.Types.EventMatcherPolicy where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data EventMatcherPolicy
instance Show EventMatcherPolicy
instance Eq EventMatcherPolicy
instance Data.Aeson.FromJSON EventMatcherPolicy
instance Data.Aeson.ToJSON EventMatcherPolicy
