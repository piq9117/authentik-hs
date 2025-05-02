module AuthentikAPI.Types.WebAuthnDeviceType where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data WebAuthnDeviceType
instance Show WebAuthnDeviceType
instance Eq WebAuthnDeviceType
instance Data.Aeson.FromJSON WebAuthnDeviceType
instance Data.Aeson.ToJSON WebAuthnDeviceType
