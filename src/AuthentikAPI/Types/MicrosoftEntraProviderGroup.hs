{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema MicrosoftEntraProviderGroup
module AuthentikAPI.Types.MicrosoftEntraProviderGroup where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.UserGroup
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

-- | Defines the object schema located at @components.schemas.MicrosoftEntraProviderGroup@ in the specification.
--
-- MicrosoftEntraProviderGroup Serializer
data MicrosoftEntraProviderGroup = MicrosoftEntraProviderGroup
  { -- | attributes
    microsoftEntraProviderGroupAttributes :: Data.Aeson.Types.Internal.Object,
    -- | group
    microsoftEntraProviderGroupGroup :: Data.Text.Internal.Text,
    -- | group_obj
    microsoftEntraProviderGroupGroupObj :: MicrosoftEntraProviderGroupGroupObj',
    -- | id
    microsoftEntraProviderGroupId :: Data.Text.Internal.Text,
    -- | microsoft_id
    microsoftEntraProviderGroupMicrosoftId :: Data.Text.Internal.Text,
    -- | provider
    microsoftEntraProviderGroupProvider :: GHC.Types.Int
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON MicrosoftEntraProviderGroup where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["attributes" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupAttributes obj] : ["group" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupGroup obj] : ["group_obj" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupGroupObj obj] : ["id" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupId obj] : ["microsoft_id" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupMicrosoftId obj] : ["provider" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupProvider obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["attributes" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupAttributes obj] : ["group" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupGroup obj] : ["group_obj" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupGroupObj obj] : ["id" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupId obj] : ["microsoft_id" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupMicrosoftId obj] : ["provider" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupProvider obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON MicrosoftEntraProviderGroup where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "MicrosoftEntraProviderGroup" (\obj -> (((((GHC.Base.pure MicrosoftEntraProviderGroup GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "group_obj")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "microsoft_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "provider"))

-- | Create a new 'MicrosoftEntraProviderGroup' with all required fields.
mkMicrosoftEntraProviderGroup ::
  -- | 'microsoftEntraProviderGroupAttributes'
  Data.Aeson.Types.Internal.Object ->
  -- | 'microsoftEntraProviderGroupGroup'
  Data.Text.Internal.Text ->
  -- | 'microsoftEntraProviderGroupGroupObj'
  MicrosoftEntraProviderGroupGroupObj' ->
  -- | 'microsoftEntraProviderGroupId'
  Data.Text.Internal.Text ->
  -- | 'microsoftEntraProviderGroupMicrosoftId'
  Data.Text.Internal.Text ->
  -- | 'microsoftEntraProviderGroupProvider'
  GHC.Types.Int ->
  MicrosoftEntraProviderGroup
mkMicrosoftEntraProviderGroup microsoftEntraProviderGroupAttributes microsoftEntraProviderGroupGroup microsoftEntraProviderGroupGroupObj microsoftEntraProviderGroupId microsoftEntraProviderGroupMicrosoftId microsoftEntraProviderGroupProvider =
  MicrosoftEntraProviderGroup
    { microsoftEntraProviderGroupAttributes = microsoftEntraProviderGroupAttributes,
      microsoftEntraProviderGroupGroup = microsoftEntraProviderGroupGroup,
      microsoftEntraProviderGroupGroupObj = microsoftEntraProviderGroupGroupObj,
      microsoftEntraProviderGroupId = microsoftEntraProviderGroupId,
      microsoftEntraProviderGroupMicrosoftId = microsoftEntraProviderGroupMicrosoftId,
      microsoftEntraProviderGroupProvider = microsoftEntraProviderGroupProvider
    }

-- | Defines the object schema located at @components.schemas.MicrosoftEntraProviderGroup.properties.group_obj.allOf@ in the specification.
data MicrosoftEntraProviderGroupGroupObj' = MicrosoftEntraProviderGroupGroupObj'
  { -- | attributes
    microsoftEntraProviderGroupGroupObj'Attributes :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | is_superuser: Users added to this group will be superusers.
    microsoftEntraProviderGroupGroupObj'IsSuperuser :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | name
    microsoftEntraProviderGroupGroupObj'Name :: Data.Text.Internal.Text,
    -- | num_pk: Get a numerical, int32 ID for the group
    microsoftEntraProviderGroupGroupObj'NumPk :: GHC.Types.Int,
    -- | parent
    microsoftEntraProviderGroupGroupObj'Parent :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | parent_name
    microsoftEntraProviderGroupGroupObj'ParentName :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | pk
    microsoftEntraProviderGroupGroupObj'Pk :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON MicrosoftEntraProviderGroupGroupObj' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("attributes" Data.Aeson.Types.ToJSON..=)) (microsoftEntraProviderGroupGroupObj'Attributes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("is_superuser" Data.Aeson.Types.ToJSON..=)) (microsoftEntraProviderGroupGroupObj'IsSuperuser obj) : ["name" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupGroupObj'Name obj] : ["num_pk" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupGroupObj'NumPk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("parent" Data.Aeson.Types.ToJSON..=)) (microsoftEntraProviderGroupGroupObj'Parent obj) : ["parent_name" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupGroupObj'ParentName obj] : ["pk" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupGroupObj'Pk obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("attributes" Data.Aeson.Types.ToJSON..=)) (microsoftEntraProviderGroupGroupObj'Attributes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("is_superuser" Data.Aeson.Types.ToJSON..=)) (microsoftEntraProviderGroupGroupObj'IsSuperuser obj) : ["name" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupGroupObj'Name obj] : ["num_pk" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupGroupObj'NumPk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("parent" Data.Aeson.Types.ToJSON..=)) (microsoftEntraProviderGroupGroupObj'Parent obj) : ["parent_name" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupGroupObj'ParentName obj] : ["pk" Data.Aeson.Types.ToJSON..= microsoftEntraProviderGroupGroupObj'Pk obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON MicrosoftEntraProviderGroupGroupObj' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "MicrosoftEntraProviderGroupGroupObj'" (\obj -> ((((((GHC.Base.pure MicrosoftEntraProviderGroupGroupObj' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "is_superuser")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "num_pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "parent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "parent_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk"))

-- | Create a new 'MicrosoftEntraProviderGroupGroupObj'' with all required fields.
mkMicrosoftEntraProviderGroupGroupObj' ::
  -- | 'microsoftEntraProviderGroupGroupObj'Name'
  Data.Text.Internal.Text ->
  -- | 'microsoftEntraProviderGroupGroupObj'NumPk'
  GHC.Types.Int ->
  -- | 'microsoftEntraProviderGroupGroupObj'ParentName'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'microsoftEntraProviderGroupGroupObj'Pk'
  Data.Text.Internal.Text ->
  MicrosoftEntraProviderGroupGroupObj'
mkMicrosoftEntraProviderGroupGroupObj' microsoftEntraProviderGroupGroupObj'Name microsoftEntraProviderGroupGroupObj'NumPk microsoftEntraProviderGroupGroupObj'ParentName microsoftEntraProviderGroupGroupObj'Pk =
  MicrosoftEntraProviderGroupGroupObj'
    { microsoftEntraProviderGroupGroupObj'Attributes = GHC.Maybe.Nothing,
      microsoftEntraProviderGroupGroupObj'IsSuperuser = GHC.Maybe.Nothing,
      microsoftEntraProviderGroupGroupObj'Name = microsoftEntraProviderGroupGroupObj'Name,
      microsoftEntraProviderGroupGroupObj'NumPk = microsoftEntraProviderGroupGroupObj'NumPk,
      microsoftEntraProviderGroupGroupObj'Parent = GHC.Maybe.Nothing,
      microsoftEntraProviderGroupGroupObj'ParentName = microsoftEntraProviderGroupGroupObj'ParentName,
      microsoftEntraProviderGroupGroupObj'Pk = microsoftEntraProviderGroupGroupObj'Pk
    }
