{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TenantAdminGroupRequestRequest
module AuthentikAPI.Types.TenantAdminGroupRequestRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.TenantAdminGroupRequestRequest@ in the specification.
--
-- Tenant admin group creation request serializer
data TenantAdminGroupRequestRequest = TenantAdminGroupRequestRequest
  { -- | user
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    tenantAdminGroupRequestRequestUser :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TenantAdminGroupRequestRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["user" Data.Aeson.Types.ToJSON..= tenantAdminGroupRequestRequestUser obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["user" Data.Aeson.Types.ToJSON..= tenantAdminGroupRequestRequestUser obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TenantAdminGroupRequestRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TenantAdminGroupRequestRequest" (\obj -> GHC.Base.pure TenantAdminGroupRequestRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user"))

-- | Create a new 'TenantAdminGroupRequestRequest' with all required fields.
mkTenantAdminGroupRequestRequest ::
  -- | 'tenantAdminGroupRequestRequestUser'
  Data.Text.Internal.Text ->
  TenantAdminGroupRequestRequest
mkTenantAdminGroupRequestRequest tenantAdminGroupRequestRequestUser = TenantAdminGroupRequestRequest {tenantAdminGroupRequestRequestUser = tenantAdminGroupRequestRequestUser}
