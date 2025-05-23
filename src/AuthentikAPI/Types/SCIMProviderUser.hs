{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SCIMProviderUser
module AuthentikAPI.Types.SCIMProviderUser where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.GroupMember
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

-- | Defines the object schema located at @components.schemas.SCIMProviderUser@ in the specification.
--
-- SCIMProviderUser Serializer
data SCIMProviderUser = SCIMProviderUser
  { -- | attributes
    sCIMProviderUserAttributes :: Data.Aeson.Types.Internal.Object,
    -- | id
    sCIMProviderUserId :: Data.Text.Internal.Text,
    -- | provider
    sCIMProviderUserProvider :: GHC.Types.Int,
    -- | scim_id
    sCIMProviderUserScimId :: Data.Text.Internal.Text,
    -- | user
    sCIMProviderUserUser :: GHC.Types.Int,
    -- | user_obj
    sCIMProviderUserUserObj :: SCIMProviderUserUserObj'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SCIMProviderUser where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["attributes" Data.Aeson.Types.ToJSON..= sCIMProviderUserAttributes obj] : ["id" Data.Aeson.Types.ToJSON..= sCIMProviderUserId obj] : ["provider" Data.Aeson.Types.ToJSON..= sCIMProviderUserProvider obj] : ["scim_id" Data.Aeson.Types.ToJSON..= sCIMProviderUserScimId obj] : ["user" Data.Aeson.Types.ToJSON..= sCIMProviderUserUser obj] : ["user_obj" Data.Aeson.Types.ToJSON..= sCIMProviderUserUserObj obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["attributes" Data.Aeson.Types.ToJSON..= sCIMProviderUserAttributes obj] : ["id" Data.Aeson.Types.ToJSON..= sCIMProviderUserId obj] : ["provider" Data.Aeson.Types.ToJSON..= sCIMProviderUserProvider obj] : ["scim_id" Data.Aeson.Types.ToJSON..= sCIMProviderUserScimId obj] : ["user" Data.Aeson.Types.ToJSON..= sCIMProviderUserUser obj] : ["user_obj" Data.Aeson.Types.ToJSON..= sCIMProviderUserUserObj obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SCIMProviderUser where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SCIMProviderUser" (\obj -> (((((GHC.Base.pure SCIMProviderUser GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "provider")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "scim_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_obj"))

-- | Create a new 'SCIMProviderUser' with all required fields.
mkSCIMProviderUser ::
  -- | 'sCIMProviderUserAttributes'
  Data.Aeson.Types.Internal.Object ->
  -- | 'sCIMProviderUserId'
  Data.Text.Internal.Text ->
  -- | 'sCIMProviderUserProvider'
  GHC.Types.Int ->
  -- | 'sCIMProviderUserScimId'
  Data.Text.Internal.Text ->
  -- | 'sCIMProviderUserUser'
  GHC.Types.Int ->
  -- | 'sCIMProviderUserUserObj'
  SCIMProviderUserUserObj' ->
  SCIMProviderUser
mkSCIMProviderUser sCIMProviderUserAttributes sCIMProviderUserId sCIMProviderUserProvider sCIMProviderUserScimId sCIMProviderUserUser sCIMProviderUserUserObj =
  SCIMProviderUser
    { sCIMProviderUserAttributes = sCIMProviderUserAttributes,
      sCIMProviderUserId = sCIMProviderUserId,
      sCIMProviderUserProvider = sCIMProviderUserProvider,
      sCIMProviderUserScimId = sCIMProviderUserScimId,
      sCIMProviderUserUser = sCIMProviderUserUser,
      sCIMProviderUserUserObj = sCIMProviderUserUserObj
    }

-- | Defines the object schema located at @components.schemas.SCIMProviderUser.properties.user_obj.allOf@ in the specification.
data SCIMProviderUserUserObj' = SCIMProviderUserUserObj'
  { -- | attributes
    sCIMProviderUserUserObj'Attributes :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | email
    --
    -- Constraints:
    --
    -- * Maximum length of 254
    sCIMProviderUserUserObj'Email :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | is_active: Designates whether this user should be treated as active. Unselect this instead of deleting accounts.
    sCIMProviderUserUserObj'IsActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | last_login
    sCIMProviderUserUserObj'LastLogin :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | name: User\'s display name.
    sCIMProviderUserUserObj'Name :: Data.Text.Internal.Text,
    -- | pk
    sCIMProviderUserUserObj'Pk :: GHC.Types.Int,
    -- | uid
    sCIMProviderUserUserObj'Uid :: Data.Text.Internal.Text,
    -- | username: Required. 150 characters or fewer. Letters, digits and \@\/.\/+\/-\/_ only.
    --
    -- Constraints:
    --
    -- * Maximum length of 150
    -- * Must match pattern \'^[\\w.\@+-]+\$\'
    sCIMProviderUserUserObj'Username :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SCIMProviderUserUserObj' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("attributes" Data.Aeson.Types.ToJSON..=)) (sCIMProviderUserUserObj'Attributes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (sCIMProviderUserUserObj'Email obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("is_active" Data.Aeson.Types.ToJSON..=)) (sCIMProviderUserUserObj'IsActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_login" Data.Aeson.Types.ToJSON..=)) (sCIMProviderUserUserObj'LastLogin obj) : ["name" Data.Aeson.Types.ToJSON..= sCIMProviderUserUserObj'Name obj] : ["pk" Data.Aeson.Types.ToJSON..= sCIMProviderUserUserObj'Pk obj] : ["uid" Data.Aeson.Types.ToJSON..= sCIMProviderUserUserObj'Uid obj] : ["username" Data.Aeson.Types.ToJSON..= sCIMProviderUserUserObj'Username obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("attributes" Data.Aeson.Types.ToJSON..=)) (sCIMProviderUserUserObj'Attributes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (sCIMProviderUserUserObj'Email obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("is_active" Data.Aeson.Types.ToJSON..=)) (sCIMProviderUserUserObj'IsActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_login" Data.Aeson.Types.ToJSON..=)) (sCIMProviderUserUserObj'LastLogin obj) : ["name" Data.Aeson.Types.ToJSON..= sCIMProviderUserUserObj'Name obj] : ["pk" Data.Aeson.Types.ToJSON..= sCIMProviderUserUserObj'Pk obj] : ["uid" Data.Aeson.Types.ToJSON..= sCIMProviderUserUserObj'Uid obj] : ["username" Data.Aeson.Types.ToJSON..= sCIMProviderUserUserObj'Username obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SCIMProviderUserUserObj' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SCIMProviderUserUserObj'" (\obj -> (((((((GHC.Base.pure SCIMProviderUserUserObj' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "is_active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last_login")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "uid")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "username"))

-- | Create a new 'SCIMProviderUserUserObj'' with all required fields.
mkSCIMProviderUserUserObj' ::
  -- | 'sCIMProviderUserUserObj'Name'
  Data.Text.Internal.Text ->
  -- | 'sCIMProviderUserUserObj'Pk'
  GHC.Types.Int ->
  -- | 'sCIMProviderUserUserObj'Uid'
  Data.Text.Internal.Text ->
  -- | 'sCIMProviderUserUserObj'Username'
  Data.Text.Internal.Text ->
  SCIMProviderUserUserObj'
mkSCIMProviderUserUserObj' sCIMProviderUserUserObj'Name sCIMProviderUserUserObj'Pk sCIMProviderUserUserObj'Uid sCIMProviderUserUserObj'Username =
  SCIMProviderUserUserObj'
    { sCIMProviderUserUserObj'Attributes = GHC.Maybe.Nothing,
      sCIMProviderUserUserObj'Email = GHC.Maybe.Nothing,
      sCIMProviderUserUserObj'IsActive = GHC.Maybe.Nothing,
      sCIMProviderUserUserObj'LastLogin = GHC.Maybe.Nothing,
      sCIMProviderUserUserObj'Name = sCIMProviderUserUserObj'Name,
      sCIMProviderUserUserObj'Pk = sCIMProviderUserUserObj'Pk,
      sCIMProviderUserUserObj'Uid = sCIMProviderUserUserObj'Uid,
      sCIMProviderUserUserObj'Username = sCIMProviderUserUserObj'Username
    }
