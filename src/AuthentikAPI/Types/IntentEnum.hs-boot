module AuthentikAPI.Types.IntentEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data IntentEnum
instance Show IntentEnum
instance Eq IntentEnum
instance Data.Aeson.FromJSON IntentEnum
instance Data.Aeson.ToJSON IntentEnum
