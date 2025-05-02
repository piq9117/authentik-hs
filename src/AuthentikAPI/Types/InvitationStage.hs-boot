module AuthentikAPI.Types.InvitationStage where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data InvitationStage
instance Show InvitationStage
instance Eq InvitationStage
instance Data.Aeson.FromJSON InvitationStage
instance Data.Aeson.ToJSON InvitationStage
