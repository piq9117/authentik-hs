module AuthentikAPI.Types.Provider where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Provider
instance Show Provider
instance Eq Provider
instance Data.Aeson.FromJSON Provider
instance Data.Aeson.ToJSON Provider
