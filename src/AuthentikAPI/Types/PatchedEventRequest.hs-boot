module AuthentikAPI.Types.PatchedEventRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PatchedEventRequest
instance Show PatchedEventRequest
instance Eq PatchedEventRequest
instance Data.Aeson.FromJSON PatchedEventRequest
instance Data.Aeson.ToJSON PatchedEventRequest
