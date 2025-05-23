{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SSFStream
module AuthentikAPI.Types.SSFStream where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.DeliveryMethodEnum
import {-# SOURCE #-} AuthentikAPI.Types.EventsRequestedEnum
import {-# SOURCE #-} AuthentikAPI.Types.IntentEnum
import {-# SOURCE #-} AuthentikAPI.Types.SSFProvider
import {-# SOURCE #-} AuthentikAPI.Types.Token
import {-# SOURCE #-} AuthentikAPI.Types.User
import {-# SOURCE #-} AuthentikAPI.Types.UserGroup
import {-# SOURCE #-} AuthentikAPI.Types.UserTypeEnum
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

-- | Defines the object schema located at @components.schemas.SSFStream@ in the specification.
--
-- SSFStream Serializer
data SSFStream = SSFStream
  { -- | aud
    sSFStreamAud :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | delivery_method
    sSFStreamDeliveryMethod :: DeliveryMethodEnum,
    -- | endpoint_url
    sSFStreamEndpointUrl :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | events_requested
    sSFStreamEventsRequested :: (GHC.Maybe.Maybe [EventsRequestedEnum]),
    -- | format
    sSFStreamFormat :: Data.Text.Internal.Text,
    -- | iss
    sSFStreamIss :: Data.Text.Internal.Text,
    -- | pk
    sSFStreamPk :: Data.Text.Internal.Text,
    -- | provider
    sSFStreamProvider :: GHC.Types.Int,
    -- | provider_obj
    sSFStreamProviderObj :: SSFStreamProviderObj'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SSFStream where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("aud" Data.Aeson.Types.ToJSON..=)) (sSFStreamAud obj) : ["delivery_method" Data.Aeson.Types.ToJSON..= sSFStreamDeliveryMethod obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("endpoint_url" Data.Aeson.Types.ToJSON..=)) (sSFStreamEndpointUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("events_requested" Data.Aeson.Types.ToJSON..=)) (sSFStreamEventsRequested obj) : ["format" Data.Aeson.Types.ToJSON..= sSFStreamFormat obj] : ["iss" Data.Aeson.Types.ToJSON..= sSFStreamIss obj] : ["pk" Data.Aeson.Types.ToJSON..= sSFStreamPk obj] : ["provider" Data.Aeson.Types.ToJSON..= sSFStreamProvider obj] : ["provider_obj" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("aud" Data.Aeson.Types.ToJSON..=)) (sSFStreamAud obj) : ["delivery_method" Data.Aeson.Types.ToJSON..= sSFStreamDeliveryMethod obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("endpoint_url" Data.Aeson.Types.ToJSON..=)) (sSFStreamEndpointUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("events_requested" Data.Aeson.Types.ToJSON..=)) (sSFStreamEventsRequested obj) : ["format" Data.Aeson.Types.ToJSON..= sSFStreamFormat obj] : ["iss" Data.Aeson.Types.ToJSON..= sSFStreamIss obj] : ["pk" Data.Aeson.Types.ToJSON..= sSFStreamPk obj] : ["provider" Data.Aeson.Types.ToJSON..= sSFStreamProvider obj] : ["provider_obj" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SSFStream where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SSFStream" (\obj -> ((((((((GHC.Base.pure SSFStream GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "aud")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "delivery_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "endpoint_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "events_requested")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "format")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "iss")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "provider")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "provider_obj"))

-- | Create a new 'SSFStream' with all required fields.
mkSSFStream ::
  -- | 'sSFStreamDeliveryMethod'
  DeliveryMethodEnum ->
  -- | 'sSFStreamFormat'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamIss'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamPk'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProvider'
  GHC.Types.Int ->
  -- | 'sSFStreamProviderObj'
  SSFStreamProviderObj' ->
  SSFStream
mkSSFStream sSFStreamDeliveryMethod sSFStreamFormat sSFStreamIss sSFStreamPk sSFStreamProvider sSFStreamProviderObj =
  SSFStream
    { sSFStreamAud = GHC.Maybe.Nothing,
      sSFStreamDeliveryMethod = sSFStreamDeliveryMethod,
      sSFStreamEndpointUrl = GHC.Maybe.Nothing,
      sSFStreamEventsRequested = GHC.Maybe.Nothing,
      sSFStreamFormat = sSFStreamFormat,
      sSFStreamIss = sSFStreamIss,
      sSFStreamPk = sSFStreamPk,
      sSFStreamProvider = sSFStreamProvider,
      sSFStreamProviderObj = sSFStreamProviderObj
    }

-- | Defines the object schema located at @components.schemas.SSFStream.properties.provider_obj.allOf@ in the specification.
data SSFStreamProviderObj' = SSFStreamProviderObj'
  { -- | component: Get object component so that we know how to edit the object
    sSFStreamProviderObj'Component :: Data.Text.Internal.Text,
    -- | event_retention
    sSFStreamProviderObj'EventRetention :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | meta_model_name: Return internal model name
    sSFStreamProviderObj'MetaModelName :: Data.Text.Internal.Text,
    -- | name
    sSFStreamProviderObj'Name :: Data.Text.Internal.Text,
    -- | oidc_auth_providers
    sSFStreamProviderObj'OidcAuthProviders :: (GHC.Maybe.Maybe [GHC.Types.Int]),
    -- | pk
    sSFStreamProviderObj'Pk :: GHC.Types.Int,
    -- | signing_key: Key used to sign the SSF Events.
    sSFStreamProviderObj'SigningKey :: Data.Text.Internal.Text,
    -- | ssf_url
    sSFStreamProviderObj'SsfUrl :: (AuthentikAPI.Common.Nullable Data.Text.Internal.Text),
    -- | token_obj
    sSFStreamProviderObj'TokenObj :: SSFStreamProviderObj'TokenObj',
    -- | verbose_name: Return object\'s verbose_name
    sSFStreamProviderObj'VerboseName :: Data.Text.Internal.Text,
    -- | verbose_name_plural: Return object\'s plural verbose_name
    sSFStreamProviderObj'VerboseNamePlural :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SSFStreamProviderObj' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'Component obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("event_retention" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'EventRetention obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'MetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'Name obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oidc_auth_providers" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'OidcAuthProviders obj) : ["pk" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'Pk obj] : ["signing_key" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'SigningKey obj] : ["ssf_url" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'SsfUrl obj] : ["token_obj" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'VerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'VerboseNamePlural obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["component" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'Component obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("event_retention" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'EventRetention obj) : ["meta_model_name" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'MetaModelName obj] : ["name" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'Name obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oidc_auth_providers" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'OidcAuthProviders obj) : ["pk" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'Pk obj] : ["signing_key" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'SigningKey obj] : ["ssf_url" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'SsfUrl obj] : ["token_obj" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj obj] : ["verbose_name" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'VerboseName obj] : ["verbose_name_plural" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'VerboseNamePlural obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SSFStreamProviderObj' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SSFStreamProviderObj'" (\obj -> ((((((((((GHC.Base.pure SSFStreamProviderObj' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "event_retention")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "meta_model_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "oidc_auth_providers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "signing_key")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ssf_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "token_obj")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verbose_name_plural"))

-- | Create a new 'SSFStreamProviderObj'' with all required fields.
mkSSFStreamProviderObj' ::
  -- | 'sSFStreamProviderObj'Component'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'MetaModelName'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'Name'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'Pk'
  GHC.Types.Int ->
  -- | 'sSFStreamProviderObj'SigningKey'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'SsfUrl'
  AuthentikAPI.Common.Nullable Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'TokenObj'
  SSFStreamProviderObj'TokenObj' ->
  -- | 'sSFStreamProviderObj'VerboseName'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'VerboseNamePlural'
  Data.Text.Internal.Text ->
  SSFStreamProviderObj'
mkSSFStreamProviderObj' sSFStreamProviderObj'Component sSFStreamProviderObj'MetaModelName sSFStreamProviderObj'Name sSFStreamProviderObj'Pk sSFStreamProviderObj'SigningKey sSFStreamProviderObj'SsfUrl sSFStreamProviderObj'TokenObj sSFStreamProviderObj'VerboseName sSFStreamProviderObj'VerboseNamePlural =
  SSFStreamProviderObj'
    { sSFStreamProviderObj'Component = sSFStreamProviderObj'Component,
      sSFStreamProviderObj'EventRetention = GHC.Maybe.Nothing,
      sSFStreamProviderObj'MetaModelName = sSFStreamProviderObj'MetaModelName,
      sSFStreamProviderObj'Name = sSFStreamProviderObj'Name,
      sSFStreamProviderObj'OidcAuthProviders = GHC.Maybe.Nothing,
      sSFStreamProviderObj'Pk = sSFStreamProviderObj'Pk,
      sSFStreamProviderObj'SigningKey = sSFStreamProviderObj'SigningKey,
      sSFStreamProviderObj'SsfUrl = sSFStreamProviderObj'SsfUrl,
      sSFStreamProviderObj'TokenObj = sSFStreamProviderObj'TokenObj,
      sSFStreamProviderObj'VerboseName = sSFStreamProviderObj'VerboseName,
      sSFStreamProviderObj'VerboseNamePlural = sSFStreamProviderObj'VerboseNamePlural
    }

-- | Defines the object schema located at @components.schemas.SSFStream.properties.provider_obj.allOf.properties.token_obj.allOf@ in the specification.
data SSFStreamProviderObj'TokenObj' = SSFStreamProviderObj'TokenObj'
  { -- | description
    sSFStreamProviderObj'TokenObj'Description :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expires
    sSFStreamProviderObj'TokenObj'Expires :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | expiring
    sSFStreamProviderObj'TokenObj'Expiring :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | identifier
    --
    -- Constraints:
    --
    -- * Maximum length of 255
    -- * Must match pattern \'^[-a-zA-Z0-9_]+\$\'
    sSFStreamProviderObj'TokenObj'Identifier :: Data.Text.Internal.Text,
    -- | intent
    sSFStreamProviderObj'TokenObj'Intent :: (GHC.Maybe.Maybe IntentEnum),
    -- | managed: Objects that are managed by authentik. These objects are created and updated automatically. This flag only indicates that an object can be overwritten by migrations. You can still modify the objects via the API, but expect changes to be overwritten in a later update.
    sSFStreamProviderObj'TokenObj'Managed :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | pk
    sSFStreamProviderObj'TokenObj'Pk :: Data.Text.Internal.Text,
    -- | user
    sSFStreamProviderObj'TokenObj'User :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | user_obj
    sSFStreamProviderObj'TokenObj'UserObj :: SSFStreamProviderObj'TokenObj'UserObj'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SSFStreamProviderObj'TokenObj' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'Description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'Expires obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expiring" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'Expiring obj) : ["identifier" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'Identifier obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("intent" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'Intent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("managed" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'Managed obj) : ["pk" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'Pk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'User obj) : ["user_obj" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'Description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'Expires obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expiring" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'Expiring obj) : ["identifier" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'Identifier obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("intent" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'Intent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("managed" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'Managed obj) : ["pk" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'Pk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'User obj) : ["user_obj" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SSFStreamProviderObj'TokenObj' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SSFStreamProviderObj'TokenObj'" (\obj -> ((((((((GHC.Base.pure SSFStreamProviderObj'TokenObj' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expiring")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "identifier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "managed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_obj"))

-- | Create a new 'SSFStreamProviderObj'TokenObj'' with all required fields.
mkSSFStreamProviderObj'TokenObj' ::
  -- | 'sSFStreamProviderObj'TokenObj'Identifier'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'TokenObj'Pk'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'TokenObj'UserObj'
  SSFStreamProviderObj'TokenObj'UserObj' ->
  SSFStreamProviderObj'TokenObj'
mkSSFStreamProviderObj'TokenObj' sSFStreamProviderObj'TokenObj'Identifier sSFStreamProviderObj'TokenObj'Pk sSFStreamProviderObj'TokenObj'UserObj =
  SSFStreamProviderObj'TokenObj'
    { sSFStreamProviderObj'TokenObj'Description = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'Expires = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'Expiring = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'Identifier = sSFStreamProviderObj'TokenObj'Identifier,
      sSFStreamProviderObj'TokenObj'Intent = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'Managed = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'Pk = sSFStreamProviderObj'TokenObj'Pk,
      sSFStreamProviderObj'TokenObj'User = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'UserObj = sSFStreamProviderObj'TokenObj'UserObj
    }

-- | Defines the object schema located at @components.schemas.SSFStream.properties.provider_obj.allOf.properties.token_obj.allOf.properties.user_obj.allOf@ in the specification.
data SSFStreamProviderObj'TokenObj'UserObj' = SSFStreamProviderObj'TokenObj'UserObj'
  { -- | attributes
    sSFStreamProviderObj'TokenObj'UserObj'Attributes :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | avatar: User\'s avatar, either a http\/https URL or a data URI
    sSFStreamProviderObj'TokenObj'UserObj'Avatar :: Data.Text.Internal.Text,
    -- | date_joined
    sSFStreamProviderObj'TokenObj'UserObj'DateJoined :: Data.Text.Internal.Text,
    -- | email
    --
    -- Constraints:
    --
    -- * Maximum length of 254
    sSFStreamProviderObj'TokenObj'UserObj'Email :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | groups
    sSFStreamProviderObj'TokenObj'UserObj'Groups :: (GHC.Maybe.Maybe [Data.Text.Internal.Text]),
    -- | groups_obj
    sSFStreamProviderObj'TokenObj'UserObj'GroupsObj :: (AuthentikAPI.Common.Nullable [UserGroup]),
    -- | is_active: Designates whether this user should be treated as active. Unselect this instead of deleting accounts.
    sSFStreamProviderObj'TokenObj'UserObj'IsActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | is_superuser
    sSFStreamProviderObj'TokenObj'UserObj'IsSuperuser :: GHC.Types.Bool,
    -- | last_login
    sSFStreamProviderObj'TokenObj'UserObj'LastLogin :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | name: User\'s display name.
    sSFStreamProviderObj'TokenObj'UserObj'Name :: Data.Text.Internal.Text,
    -- | password_change_date
    sSFStreamProviderObj'TokenObj'UserObj'PasswordChangeDate :: Data.Text.Internal.Text,
    -- | path
    sSFStreamProviderObj'TokenObj'UserObj'Path :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | pk
    sSFStreamProviderObj'TokenObj'UserObj'Pk :: GHC.Types.Int,
    -- | type
    sSFStreamProviderObj'TokenObj'UserObj'Type :: (GHC.Maybe.Maybe UserTypeEnum),
    -- | uid
    sSFStreamProviderObj'TokenObj'UserObj'Uid :: Data.Text.Internal.Text,
    -- | username
    --
    -- Constraints:
    --
    -- * Maximum length of 150
    sSFStreamProviderObj'TokenObj'UserObj'Username :: Data.Text.Internal.Text,
    -- | uuid
    sSFStreamProviderObj'TokenObj'UserObj'Uuid :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SSFStreamProviderObj'TokenObj'UserObj' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("attributes" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'Attributes obj) : ["avatar" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'Avatar obj] : ["date_joined" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'DateJoined obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'Email obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("groups" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'Groups obj) : ["groups_obj" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'GroupsObj obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("is_active" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'IsActive obj) : ["is_superuser" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'IsSuperuser obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_login" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'LastLogin obj) : ["name" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'Name obj] : ["password_change_date" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'PasswordChangeDate obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("path" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'Path obj) : ["pk" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'Pk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'Type obj) : ["uid" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'Uid obj] : ["username" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'Username obj] : ["uuid" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'Uuid obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("attributes" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'Attributes obj) : ["avatar" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'Avatar obj] : ["date_joined" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'DateJoined obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'Email obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("groups" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'Groups obj) : ["groups_obj" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'GroupsObj obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("is_active" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'IsActive obj) : ["is_superuser" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'IsSuperuser obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_login" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'LastLogin obj) : ["name" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'Name obj] : ["password_change_date" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'PasswordChangeDate obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("path" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'Path obj) : ["pk" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'Pk obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (sSFStreamProviderObj'TokenObj'UserObj'Type obj) : ["uid" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'Uid obj] : ["username" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'Username obj] : ["uuid" Data.Aeson.Types.ToJSON..= sSFStreamProviderObj'TokenObj'UserObj'Uuid obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SSFStreamProviderObj'TokenObj'UserObj' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SSFStreamProviderObj'TokenObj'UserObj'" (\obj -> ((((((((((((((((GHC.Base.pure SSFStreamProviderObj'TokenObj'UserObj' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "avatar")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "date_joined")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "groups")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "groups_obj")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "is_active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "is_superuser")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last_login")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "password_change_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "path")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "uid")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "username")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "uuid"))

-- | Create a new 'SSFStreamProviderObj'TokenObj'UserObj'' with all required fields.
mkSSFStreamProviderObj'TokenObj'UserObj' ::
  -- | 'sSFStreamProviderObj'TokenObj'UserObj'Avatar'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'TokenObj'UserObj'DateJoined'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'TokenObj'UserObj'GroupsObj'
  AuthentikAPI.Common.Nullable [UserGroup] ->
  -- | 'sSFStreamProviderObj'TokenObj'UserObj'IsSuperuser'
  GHC.Types.Bool ->
  -- | 'sSFStreamProviderObj'TokenObj'UserObj'Name'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'TokenObj'UserObj'PasswordChangeDate'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'TokenObj'UserObj'Pk'
  GHC.Types.Int ->
  -- | 'sSFStreamProviderObj'TokenObj'UserObj'Uid'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'TokenObj'UserObj'Username'
  Data.Text.Internal.Text ->
  -- | 'sSFStreamProviderObj'TokenObj'UserObj'Uuid'
  Data.Text.Internal.Text ->
  SSFStreamProviderObj'TokenObj'UserObj'
mkSSFStreamProviderObj'TokenObj'UserObj' sSFStreamProviderObj'TokenObj'UserObj'Avatar sSFStreamProviderObj'TokenObj'UserObj'DateJoined sSFStreamProviderObj'TokenObj'UserObj'GroupsObj sSFStreamProviderObj'TokenObj'UserObj'IsSuperuser sSFStreamProviderObj'TokenObj'UserObj'Name sSFStreamProviderObj'TokenObj'UserObj'PasswordChangeDate sSFStreamProviderObj'TokenObj'UserObj'Pk sSFStreamProviderObj'TokenObj'UserObj'Uid sSFStreamProviderObj'TokenObj'UserObj'Username sSFStreamProviderObj'TokenObj'UserObj'Uuid =
  SSFStreamProviderObj'TokenObj'UserObj'
    { sSFStreamProviderObj'TokenObj'UserObj'Attributes = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'UserObj'Avatar = sSFStreamProviderObj'TokenObj'UserObj'Avatar,
      sSFStreamProviderObj'TokenObj'UserObj'DateJoined = sSFStreamProviderObj'TokenObj'UserObj'DateJoined,
      sSFStreamProviderObj'TokenObj'UserObj'Email = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'UserObj'Groups = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'UserObj'GroupsObj = sSFStreamProviderObj'TokenObj'UserObj'GroupsObj,
      sSFStreamProviderObj'TokenObj'UserObj'IsActive = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'UserObj'IsSuperuser = sSFStreamProviderObj'TokenObj'UserObj'IsSuperuser,
      sSFStreamProviderObj'TokenObj'UserObj'LastLogin = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'UserObj'Name = sSFStreamProviderObj'TokenObj'UserObj'Name,
      sSFStreamProviderObj'TokenObj'UserObj'PasswordChangeDate = sSFStreamProviderObj'TokenObj'UserObj'PasswordChangeDate,
      sSFStreamProviderObj'TokenObj'UserObj'Path = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'UserObj'Pk = sSFStreamProviderObj'TokenObj'UserObj'Pk,
      sSFStreamProviderObj'TokenObj'UserObj'Type = GHC.Maybe.Nothing,
      sSFStreamProviderObj'TokenObj'UserObj'Uid = sSFStreamProviderObj'TokenObj'UserObj'Uid,
      sSFStreamProviderObj'TokenObj'UserObj'Username = sSFStreamProviderObj'TokenObj'UserObj'Username,
      sSFStreamProviderObj'TokenObj'UserObj'Uuid = sSFStreamProviderObj'TokenObj'UserObj'Uuid
    }
