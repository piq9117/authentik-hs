module AuthentikAPI.Types.DummyStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DummyStage
instance Show DummyStage
instance Eq DummyStage
instance Data.Aeson.FromJSON DummyStage
instance Data.Aeson.ToJSON DummyStage
