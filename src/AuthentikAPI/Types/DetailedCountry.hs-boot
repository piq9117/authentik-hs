module AuthentikAPI.Types.DetailedCountry where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DetailedCountry
instance Show DetailedCountry
instance Eq DetailedCountry
instance Data.Aeson.FromJSON DetailedCountry
instance Data.Aeson.ToJSON DetailedCountry
