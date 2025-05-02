module AuthentikAPI.Types.EventsRequestedEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data EventsRequestedEnum
instance Show EventsRequestedEnum
instance Eq EventsRequestedEnum
instance Data.Aeson.FromJSON EventsRequestedEnum
instance Data.Aeson.ToJSON EventsRequestedEnum
