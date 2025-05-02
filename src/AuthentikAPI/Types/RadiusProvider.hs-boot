module AuthentikAPI.Types.RadiusProvider where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data RadiusProvider
instance Show RadiusProvider
instance Eq RadiusProvider
instance Data.Aeson.FromJSON RadiusProvider
instance Data.Aeson.ToJSON RadiusProvider
