module AuthentikAPI.Types.Policy where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Policy
instance Show Policy
instance Eq Policy
instance Data.Aeson.FromJSON Policy
instance Data.Aeson.ToJSON Policy
