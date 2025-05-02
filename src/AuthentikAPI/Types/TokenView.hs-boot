module AuthentikAPI.Types.TokenView where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data TokenView
instance Show TokenView
instance Eq TokenView
instance Data.Aeson.FromJSON TokenView
instance Data.Aeson.ToJSON TokenView
