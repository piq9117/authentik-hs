module AuthentikAPI.Types.Metadata where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Metadata
instance Show Metadata
instance Eq Metadata
instance Data.Aeson.FromJSON Metadata
instance Data.Aeson.ToJSON Metadata
