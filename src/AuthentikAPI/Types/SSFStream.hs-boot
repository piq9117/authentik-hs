module AuthentikAPI.Types.SSFStream where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data SSFStream
instance Show SSFStream
instance Eq SSFStream
instance Data.Aeson.FromJSON SSFStream
instance Data.Aeson.ToJSON SSFStream
data SSFStreamProviderObj'
instance Show SSFStreamProviderObj'
instance Eq SSFStreamProviderObj'
instance Data.Aeson.FromJSON SSFStreamProviderObj'
instance Data.Aeson.ToJSON SSFStreamProviderObj'
data SSFStreamProviderObj'TokenObj'
instance Show SSFStreamProviderObj'TokenObj'
instance Eq SSFStreamProviderObj'TokenObj'
instance Data.Aeson.FromJSON SSFStreamProviderObj'TokenObj'
instance Data.Aeson.ToJSON SSFStreamProviderObj'TokenObj'
data SSFStreamProviderObj'TokenObj'UserObj'
instance Show SSFStreamProviderObj'TokenObj'UserObj'
instance Eq SSFStreamProviderObj'TokenObj'UserObj'
instance Data.Aeson.FromJSON SSFStreamProviderObj'TokenObj'UserObj'
instance Data.Aeson.ToJSON SSFStreamProviderObj'TokenObj'UserObj'
