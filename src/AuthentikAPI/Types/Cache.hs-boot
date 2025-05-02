module AuthentikAPI.Types.Cache where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Cache
instance Show Cache
instance Eq Cache
instance Data.Aeson.FromJSON Cache
instance Data.Aeson.ToJSON Cache
