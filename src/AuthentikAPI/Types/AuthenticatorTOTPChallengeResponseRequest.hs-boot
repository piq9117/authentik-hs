module AuthentikAPI.Types.AuthenticatorTOTPChallengeResponseRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data AuthenticatorTOTPChallengeResponseRequest
instance Show AuthenticatorTOTPChallengeResponseRequest
instance Eq AuthenticatorTOTPChallengeResponseRequest
instance Data.Aeson.FromJSON AuthenticatorTOTPChallengeResponseRequest
instance Data.Aeson.ToJSON AuthenticatorTOTPChallengeResponseRequest
