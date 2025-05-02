module AuthentikAPI.Types.RedirectURIRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data RedirectURIRequest
instance Show RedirectURIRequest
instance Eq RedirectURIRequest
instance Data.Aeson.FromJSON RedirectURIRequest
instance Data.Aeson.ToJSON RedirectURIRequest
