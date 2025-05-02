module AuthentikAPI.Types.SCIMMapping where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SCIMMapping
instance Show SCIMMapping
instance Eq SCIMMapping
instance Data.Aeson.FromJSON SCIMMapping
instance Data.Aeson.ToJSON SCIMMapping
