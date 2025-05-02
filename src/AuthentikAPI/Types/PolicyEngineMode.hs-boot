module AuthentikAPI.Types.PolicyEngineMode where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PolicyEngineMode
instance Show PolicyEngineMode
instance Eq PolicyEngineMode
instance Data.Aeson.FromJSON PolicyEngineMode
instance Data.Aeson.ToJSON PolicyEngineMode
