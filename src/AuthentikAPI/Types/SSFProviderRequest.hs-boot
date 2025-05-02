module AuthentikAPI.Types.SSFProviderRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SSFProviderRequest
instance Show SSFProviderRequest
instance Eq SSFProviderRequest
instance Data.Aeson.FromJSON SSFProviderRequest
instance Data.Aeson.ToJSON SSFProviderRequest
