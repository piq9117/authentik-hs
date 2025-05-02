module AuthentikAPI.Types.WebAuthnDevice where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data WebAuthnDevice
instance Show WebAuthnDevice
instance Eq WebAuthnDevice
instance Data.Aeson.FromJSON WebAuthnDevice
instance Data.Aeson.ToJSON WebAuthnDevice
data WebAuthnDeviceDeviceType'NonNullable
instance Show WebAuthnDeviceDeviceType'NonNullable
instance Eq WebAuthnDeviceDeviceType'NonNullable
instance Data.Aeson.FromJSON WebAuthnDeviceDeviceType'NonNullable
instance Data.Aeson.ToJSON WebAuthnDeviceDeviceType'NonNullable
data WebAuthnDeviceUser'
instance Show WebAuthnDeviceUser'
instance Eq WebAuthnDeviceUser'
instance Data.Aeson.FromJSON WebAuthnDeviceUser'
instance Data.Aeson.ToJSON WebAuthnDeviceUser'
