module AuthentikAPI.Types.ScopeMapping where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ScopeMapping
instance Show ScopeMapping
instance Eq ScopeMapping
instance Data.Aeson.FromJSON ScopeMapping
instance Data.Aeson.ToJSON ScopeMapping
