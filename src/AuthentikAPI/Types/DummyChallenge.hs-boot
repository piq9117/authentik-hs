module AuthentikAPI.Types.DummyChallenge where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DummyChallenge
instance Show DummyChallenge
instance Eq DummyChallenge
instance Data.Aeson.FromJSON DummyChallenge
instance Data.Aeson.ToJSON DummyChallenge
