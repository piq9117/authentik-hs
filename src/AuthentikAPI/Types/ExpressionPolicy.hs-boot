module AuthentikAPI.Types.ExpressionPolicy where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data ExpressionPolicy
instance Show ExpressionPolicy
instance Eq ExpressionPolicy
instance Data.Aeson.FromJSON ExpressionPolicy
instance Data.Aeson.ToJSON ExpressionPolicy
