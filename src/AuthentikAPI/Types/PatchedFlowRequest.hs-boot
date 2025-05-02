module AuthentikAPI.Types.PatchedFlowRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PatchedFlowRequest
instance Show PatchedFlowRequest
instance Eq PatchedFlowRequest
instance Data.Aeson.FromJSON PatchedFlowRequest
instance Data.Aeson.ToJSON PatchedFlowRequest
