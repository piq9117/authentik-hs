module AuthentikAPI.Types.AuthenticatorStaticStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data AuthenticatorStaticStage
instance Show AuthenticatorStaticStage
instance Eq AuthenticatorStaticStage
instance Data.Aeson.FromJSON AuthenticatorStaticStage
instance Data.Aeson.ToJSON AuthenticatorStaticStage
