module AuthentikAPI.Types.DummyPolicyRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DummyPolicyRequest
instance Show DummyPolicyRequest
instance Eq DummyPolicyRequest
instance Data.Aeson.FromJSON DummyPolicyRequest
instance Data.Aeson.ToJSON DummyPolicyRequest
