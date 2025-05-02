module AuthentikAPI.Types.DigitsEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DigitsEnum
instance Show DigitsEnum
instance Eq DigitsEnum
instance Data.Aeson.FromJSON DigitsEnum
instance Data.Aeson.ToJSON DigitsEnum
