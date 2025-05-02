module AuthentikAPI.Types.PolicyTestRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PolicyTestRequest
instance Show PolicyTestRequest
instance Eq PolicyTestRequest
instance Data.Aeson.FromJSON PolicyTestRequest
instance Data.Aeson.ToJSON PolicyTestRequest
