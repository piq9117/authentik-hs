module AuthentikAPI.Types.PolicyBinding where
import qualified Data.Aeson
import qualified AuthentikAPI.Common
data PolicyBinding
instance Show PolicyBinding
instance Eq PolicyBinding
instance Data.Aeson.FromJSON PolicyBinding
instance Data.Aeson.ToJSON PolicyBinding
data PolicyBindingGroupObj'
instance Show PolicyBindingGroupObj'
instance Eq PolicyBindingGroupObj'
instance Data.Aeson.FromJSON PolicyBindingGroupObj'
instance Data.Aeson.ToJSON PolicyBindingGroupObj'
data PolicyBindingPolicyObj'
instance Show PolicyBindingPolicyObj'
instance Eq PolicyBindingPolicyObj'
instance Data.Aeson.FromJSON PolicyBindingPolicyObj'
instance Data.Aeson.ToJSON PolicyBindingPolicyObj'
data PolicyBindingUserObj'
instance Show PolicyBindingUserObj'
instance Eq PolicyBindingUserObj'
instance Data.Aeson.FromJSON PolicyBindingUserObj'
instance Data.Aeson.ToJSON PolicyBindingUserObj'
