module AuthentikAPI.Types.FlowDesignationEnum where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data FlowDesignationEnum
instance Show FlowDesignationEnum
instance Eq FlowDesignationEnum
instance Data.Aeson.FromJSON FlowDesignationEnum
instance Data.Aeson.ToJSON FlowDesignationEnum
