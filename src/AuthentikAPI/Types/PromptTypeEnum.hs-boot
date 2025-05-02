module AuthentikAPI.Types.PromptTypeEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PromptTypeEnum
instance Show PromptTypeEnum
instance Eq PromptTypeEnum
instance Data.Aeson.FromJSON PromptTypeEnum
instance Data.Aeson.ToJSON PromptTypeEnum
