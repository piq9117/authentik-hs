module AuthentikAPI.Types.PolicyTestResult where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PolicyTestResult
instance Show PolicyTestResult
instance Eq PolicyTestResult
instance Data.Aeson.FromJSON PolicyTestResult
instance Data.Aeson.ToJSON PolicyTestResult
