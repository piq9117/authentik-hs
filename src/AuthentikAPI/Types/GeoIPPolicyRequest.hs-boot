module AuthentikAPI.Types.GeoIPPolicyRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data GeoIPPolicyRequest
instance Show GeoIPPolicyRequest
instance Eq GeoIPPolicyRequest
instance Data.Aeson.FromJSON GeoIPPolicyRequest
instance Data.Aeson.ToJSON GeoIPPolicyRequest
