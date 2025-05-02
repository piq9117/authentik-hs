module AuthentikAPI.Types.OutpostRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data OutpostRequest
instance Show OutpostRequest
instance Eq OutpostRequest
instance Data.Aeson.FromJSON OutpostRequest
instance Data.Aeson.ToJSON OutpostRequest
