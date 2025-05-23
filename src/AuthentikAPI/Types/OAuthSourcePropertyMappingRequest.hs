{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema OAuthSourcePropertyMappingRequest
module AuthentikAPI.Types.OAuthSourcePropertyMappingRequest where

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

-- | Defines the object schema located at @components.schemas.OAuthSourcePropertyMappingRequest@ in the specification.
--
-- OAuthSourcePropertyMapping Serializer
data OAuthSourcePropertyMappingRequest = OAuthSourcePropertyMappingRequest
  { -- | expression
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    oAuthSourcePropertyMappingRequestExpression :: Data.Text.Internal.Text,
    -- | managed: Objects that are managed by authentik. These objects are created and updated automatically. This flag only indicates that an object can be overwritten by migrations. You can still modify the objects via the API, but expect changes to be overwritten in a later update.
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    oAuthSourcePropertyMappingRequestManaged :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | name
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    oAuthSourcePropertyMappingRequestName :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OAuthSourcePropertyMappingRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["expression" Data.Aeson.Types.ToJSON..= oAuthSourcePropertyMappingRequestExpression obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("managed" Data.Aeson.Types.ToJSON..=)) (oAuthSourcePropertyMappingRequestManaged obj) : ["name" Data.Aeson.Types.ToJSON..= oAuthSourcePropertyMappingRequestName obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["expression" Data.Aeson.Types.ToJSON..= oAuthSourcePropertyMappingRequestExpression obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("managed" Data.Aeson.Types.ToJSON..=)) (oAuthSourcePropertyMappingRequestManaged obj) : ["name" Data.Aeson.Types.ToJSON..= oAuthSourcePropertyMappingRequestName obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON OAuthSourcePropertyMappingRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OAuthSourcePropertyMappingRequest" (\obj -> ((GHC.Base.pure OAuthSourcePropertyMappingRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expression")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "managed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name"))

-- | Create a new 'OAuthSourcePropertyMappingRequest' with all required fields.
mkOAuthSourcePropertyMappingRequest ::
  -- | 'oAuthSourcePropertyMappingRequestExpression'
  Data.Text.Internal.Text ->
  -- | 'oAuthSourcePropertyMappingRequestName'
  Data.Text.Internal.Text ->
  OAuthSourcePropertyMappingRequest
mkOAuthSourcePropertyMappingRequest oAuthSourcePropertyMappingRequestExpression oAuthSourcePropertyMappingRequestName =
  OAuthSourcePropertyMappingRequest
    { oAuthSourcePropertyMappingRequestExpression = oAuthSourcePropertyMappingRequestExpression,
      oAuthSourcePropertyMappingRequestManaged = GHC.Maybe.Nothing,
      oAuthSourcePropertyMappingRequestName = oAuthSourcePropertyMappingRequestName
    }
