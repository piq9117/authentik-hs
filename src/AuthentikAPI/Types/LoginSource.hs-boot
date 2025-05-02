module AuthentikAPI.Types.LoginSource where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LoginSource
instance Show LoginSource
instance Eq LoginSource
instance Data.Aeson.FromJSON LoginSource
instance Data.Aeson.ToJSON LoginSource
