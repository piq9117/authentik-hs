module AuthentikAPI.Types.Reputation where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Reputation
instance Show Reputation
instance Eq Reputation
instance Data.Aeson.FromJSON Reputation
instance Data.Aeson.ToJSON Reputation
