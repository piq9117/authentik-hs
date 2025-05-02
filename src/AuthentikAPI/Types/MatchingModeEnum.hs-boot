module AuthentikAPI.Types.MatchingModeEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data MatchingModeEnum
instance Show MatchingModeEnum
instance Eq MatchingModeEnum
instance Data.Aeson.FromJSON MatchingModeEnum
instance Data.Aeson.ToJSON MatchingModeEnum
