module AuthentikAPI.Types.SourceType where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SourceType
instance Show SourceType
instance Eq SourceType
instance Data.Aeson.FromJSON SourceType
instance Data.Aeson.ToJSON SourceType
