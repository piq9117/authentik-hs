module AuthentikAPI.Types.DigestAlgorithmEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data DigestAlgorithmEnum
instance Show DigestAlgorithmEnum
instance Eq DigestAlgorithmEnum
instance Data.Aeson.FromJSON DigestAlgorithmEnum
instance Data.Aeson.ToJSON DigestAlgorithmEnum
