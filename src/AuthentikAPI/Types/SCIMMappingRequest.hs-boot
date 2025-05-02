module AuthentikAPI.Types.SCIMMappingRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SCIMMappingRequest
instance Show SCIMMappingRequest
instance Eq SCIMMappingRequest
instance Data.Aeson.FromJSON SCIMMappingRequest
instance Data.Aeson.ToJSON SCIMMappingRequest
