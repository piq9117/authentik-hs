module AuthentikAPI.Types.Invitation where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data Invitation
instance Show Invitation
instance Eq Invitation
instance Data.Aeson.FromJSON Invitation
instance Data.Aeson.ToJSON Invitation
data InvitationCreatedBy'
instance Show InvitationCreatedBy'
instance Eq InvitationCreatedBy'
instance Data.Aeson.FromJSON InvitationCreatedBy'
instance Data.Aeson.ToJSON InvitationCreatedBy'
data InvitationFlowObj'
instance Show InvitationFlowObj'
instance Eq InvitationFlowObj'
instance Data.Aeson.FromJSON InvitationFlowObj'
instance Data.Aeson.ToJSON InvitationFlowObj'
