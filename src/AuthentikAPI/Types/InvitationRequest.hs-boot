module AuthentikAPI.Types.InvitationRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data InvitationRequest
instance Show InvitationRequest
instance Eq InvitationRequest
instance Data.Aeson.FromJSON InvitationRequest
instance Data.Aeson.ToJSON InvitationRequest
