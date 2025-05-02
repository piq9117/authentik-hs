module AuthentikAPI.Types.CertificateData where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data CertificateData
instance Show CertificateData
instance Eq CertificateData
instance Data.Aeson.FromJSON CertificateData
instance Data.Aeson.ToJSON CertificateData
