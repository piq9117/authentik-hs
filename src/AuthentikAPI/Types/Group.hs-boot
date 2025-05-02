module AuthentikAPI.Types.Group where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Group
instance Show Group
instance Eq Group
instance Data.Aeson.FromJSON Group
instance Data.Aeson.ToJSON Group
