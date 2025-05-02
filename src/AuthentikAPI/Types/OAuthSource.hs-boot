module AuthentikAPI.Types.OAuthSource where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data OAuthSource
instance Show OAuthSource
instance Eq OAuthSource
instance Data.Aeson.FromJSON OAuthSource
instance Data.Aeson.ToJSON OAuthSource
data OAuthSourceType'
instance Show OAuthSourceType'
instance Eq OAuthSourceType'
instance Data.Aeson.FromJSON OAuthSourceType'
instance Data.Aeson.ToJSON OAuthSourceType'
