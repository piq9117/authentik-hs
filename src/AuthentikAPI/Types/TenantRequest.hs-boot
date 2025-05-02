module AuthentikAPI.Types.TenantRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data TenantRequest
instance Show TenantRequest
instance Eq TenantRequest
instance Data.Aeson.FromJSON TenantRequest
instance Data.Aeson.ToJSON TenantRequest
