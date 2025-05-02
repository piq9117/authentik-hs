module AuthentikAPI.Types.TokenModel where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data TokenModel
instance Show TokenModel
instance Eq TokenModel
instance Data.Aeson.FromJSON TokenModel
instance Data.Aeson.ToJSON TokenModel
