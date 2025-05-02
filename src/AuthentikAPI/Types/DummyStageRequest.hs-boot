module AuthentikAPI.Types.DummyStageRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DummyStageRequest
instance Show DummyStageRequest
instance Eq DummyStageRequest
instance Data.Aeson.FromJSON DummyStageRequest
instance Data.Aeson.ToJSON DummyStageRequest
