module AuthentikAPI.Types.UserConsent where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data UserConsent
instance Show UserConsent
instance Eq UserConsent
instance Data.Aeson.FromJSON UserConsent
instance Data.Aeson.ToJSON UserConsent
