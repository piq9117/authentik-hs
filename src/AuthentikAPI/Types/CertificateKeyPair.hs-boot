module AuthentikAPI.Types.CertificateKeyPair where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data CertificateKeyPair
instance Show CertificateKeyPair
instance Eq CertificateKeyPair
instance Data.Aeson.FromJSON CertificateKeyPair
instance Data.Aeson.ToJSON CertificateKeyPair
