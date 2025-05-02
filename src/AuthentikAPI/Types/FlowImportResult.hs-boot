module AuthentikAPI.Types.FlowImportResult where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data FlowImportResult
instance Show FlowImportResult
instance Eq FlowImportResult
instance Data.Aeson.FromJSON FlowImportResult
instance Data.Aeson.ToJSON FlowImportResult
