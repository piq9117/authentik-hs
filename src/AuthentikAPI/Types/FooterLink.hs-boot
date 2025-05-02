module AuthentikAPI.Types.FooterLink where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data FooterLink
instance Show FooterLink
instance Eq FooterLink
instance Data.Aeson.FromJSON FooterLink
instance Data.Aeson.ToJSON FooterLink
