module AuthentikAPI.Types.Outpost where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Outpost
instance Show Outpost
instance Eq Outpost
instance Data.Aeson.FromJSON Outpost
instance Data.Aeson.ToJSON Outpost
data OutpostServiceConnectionObj'
instance Show OutpostServiceConnectionObj'
instance Eq OutpostServiceConnectionObj'
instance Data.Aeson.FromJSON OutpostServiceConnectionObj'
instance Data.Aeson.ToJSON OutpostServiceConnectionObj'
