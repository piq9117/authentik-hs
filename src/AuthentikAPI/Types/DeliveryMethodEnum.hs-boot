module AuthentikAPI.Types.DeliveryMethodEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DeliveryMethodEnum
instance Show DeliveryMethodEnum
instance Eq DeliveryMethodEnum
instance Data.Aeson.FromJSON DeliveryMethodEnum
instance Data.Aeson.ToJSON DeliveryMethodEnum
