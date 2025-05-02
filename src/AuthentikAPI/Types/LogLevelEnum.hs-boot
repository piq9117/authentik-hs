module AuthentikAPI.Types.LogLevelEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data LogLevelEnum
instance Show LogLevelEnum
instance Eq LogLevelEnum
instance Data.Aeson.FromJSON LogLevelEnum
instance Data.Aeson.ToJSON LogLevelEnum
