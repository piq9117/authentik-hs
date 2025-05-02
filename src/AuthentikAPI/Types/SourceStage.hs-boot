module AuthentikAPI.Types.SourceStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SourceStage
instance Show SourceStage
instance Eq SourceStage
instance Data.Aeson.FromJSON SourceStage
instance Data.Aeson.ToJSON SourceStage
