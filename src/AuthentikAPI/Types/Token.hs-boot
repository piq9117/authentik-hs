module AuthentikAPI.Types.Token where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Token
instance Show Token
instance Eq Token
instance Data.Aeson.FromJSON Token
instance Data.Aeson.ToJSON Token
data TokenUserObj'
instance Show TokenUserObj'
instance Eq TokenUserObj'
instance Data.Aeson.FromJSON TokenUserObj'
instance Data.Aeson.ToJSON TokenUserObj'
