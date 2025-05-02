module AuthentikAPI.Types.OAuthSourceRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data OAuthSourceRequest
instance Show OAuthSourceRequest
instance Eq OAuthSourceRequest
instance Data.Aeson.FromJSON OAuthSourceRequest
instance Data.Aeson.ToJSON OAuthSourceRequest
