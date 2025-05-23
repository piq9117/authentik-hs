{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Group
module AuthentikAPI.Types.Group where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.GroupMember
import {-# SOURCE #-} AuthentikAPI.Types.Role
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

-- | Defines the object schema located at @components.schemas.Group@ in the specification.
--
-- Group Serializer
data Group = Group
  { -- | attributes
    groupAttributes :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | is_superuser: Users added to this group will be superusers.
    groupIsSuperuser :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | name
    groupName :: Data.Text.Internal.Text,
    -- | num_pk
    groupNumPk :: GHC.Types.Int,
    -- | parent
    groupParent :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | parent_name
    groupParentName :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | pk
    groupPk :: Data.Text.Internal.Text,
    -- | roles
    groupRoles :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | roles_obj
    groupRolesObj :: [Role],
    -- | users
    groupUsers :: (GHC.Maybe.Maybe [GHC.Types.Int]),
    -- | users_obj
    groupUsersObj :: (AuthentikAPI.Common.Nullable [GroupMember])
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Group where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("attributes" Data.Aeson.Types.ToJSON..=)) (groupAttributes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("is_superuser" Data.Aeson.Types.ToJSON..=)) (groupIsSuperuser obj) : ["name" Data.Aeson.Types.ToJSON..= groupName obj] : ["num_pk" Data.Aeson.Types.ToJSON..= groupNumPk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("parent" Data.Aeson.Types.ToJSON..=)) (groupParent obj) : ["parent_name" Data.Aeson.Types.ToJSON..= groupParentName obj] : ["pk" Data.Aeson.Types.ToJSON..= groupPk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("roles" Data.Aeson.Types.ToJSON..=)) (groupRoles obj) : ["roles_obj" Data.Aeson.Types.ToJSON..= groupRolesObj obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("users" Data.Aeson.Types.ToJSON..=)) (groupUsers obj) : ["users_obj" Data.Aeson.Types.ToJSON..= groupUsersObj obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("attributes" Data.Aeson.Types.ToJSON..=)) (groupAttributes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("is_superuser" Data.Aeson.Types.ToJSON..=)) (groupIsSuperuser obj) : ["name" Data.Aeson.Types.ToJSON..= groupName obj] : ["num_pk" Data.Aeson.Types.ToJSON..= groupNumPk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("parent" Data.Aeson.Types.ToJSON..=)) (groupParent obj) : ["parent_name" Data.Aeson.Types.ToJSON..= groupParentName obj] : ["pk" Data.Aeson.Types.ToJSON..= groupPk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("roles" Data.Aeson.Types.ToJSON..=)) (groupRoles obj) : ["roles_obj" Data.Aeson.Types.ToJSON..= groupRolesObj obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("users" Data.Aeson.Types.ToJSON..=)) (groupUsers obj) : ["users_obj" Data.Aeson.Types.ToJSON..= groupUsersObj obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Group where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Group" (\obj -> ((((((((((GHC.Base.pure Group GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "is_superuser")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "num_pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "parent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "parent_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "roles")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "roles_obj")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "users")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "users_obj"))

-- | Create a new 'Group' with all required fields.
mkGroup ::
  -- | 'groupName'
  Data.Text.Internal.Text ->
  -- | 'groupNumPk'
  GHC.Types.Int ->
  -- | 'groupParentName'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'groupPk'
  Data.Text.Internal.Text ->
  -- | 'groupRolesObj'
  [Role] ->
  -- | 'groupUsersObj'
  AuthentikAPI.Common.Nullable [GroupMember] ->
  Group
mkGroup groupName groupNumPk groupParentName groupPk groupRolesObj groupUsersObj =
  Group
    { groupAttributes = GHC.Maybe.Nothing,
      groupIsSuperuser = GHC.Maybe.Nothing,
      groupName = groupName,
      groupNumPk = groupNumPk,
      groupParent = GHC.Maybe.Nothing,
      groupParentName = groupParentName,
      groupPk = groupPk,
      groupRoles = GHC.Maybe.Nothing,
      groupRolesObj = groupRolesObj,
      groupUsers = GHC.Maybe.Nothing,
      groupUsersObj = groupUsersObj
    }
