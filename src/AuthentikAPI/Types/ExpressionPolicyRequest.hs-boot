module AuthentikAPI.Types.ExpressionPolicyRequest where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ExpressionPolicyRequest
instance Show ExpressionPolicyRequest
instance Eq ExpressionPolicyRequest
instance Data.Aeson.FromJSON ExpressionPolicyRequest
instance Data.Aeson.ToJSON ExpressionPolicyRequest
