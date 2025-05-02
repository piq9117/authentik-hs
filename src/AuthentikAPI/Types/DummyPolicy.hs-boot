module AuthentikAPI.Types.DummyPolicy where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DummyPolicy
instance Show DummyPolicy
instance Eq DummyPolicy
instance Data.Aeson.FromJSON DummyPolicy
instance Data.Aeson.ToJSON DummyPolicy
