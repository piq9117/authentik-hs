module AuthentikAPI.Types.FilePathRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data FilePathRequest
instance Show FilePathRequest
instance Eq FilePathRequest
instance Data.Aeson.FromJSON FilePathRequest
instance Data.Aeson.ToJSON FilePathRequest
