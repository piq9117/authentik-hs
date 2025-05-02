module AuthentikAPI.Types.IdentificationStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data IdentificationStage
instance Show IdentificationStage
instance Eq IdentificationStage
instance Data.Aeson.FromJSON IdentificationStage
instance Data.Aeson.ToJSON IdentificationStage
