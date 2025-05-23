{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PatchedSAMLPropertyMappingRequest
module AuthentikAPI.Types.PatchedSAMLPropertyMappingRequest where

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

-- | Defines the object schema located at @components.schemas.PatchedSAMLPropertyMappingRequest@ in the specification.
--
-- SAMLPropertyMapping Serializer
data PatchedSAMLPropertyMappingRequest = PatchedSAMLPropertyMappingRequest
  { -- | expression
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedSAMLPropertyMappingRequestExpression :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | friendly_name
    patchedSAMLPropertyMappingRequestFriendlyName :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | managed: Objects that are managed by authentik. These objects are created and updated automatically. This flag only indicates that an object can be overwritten by migrations. You can still modify the objects via the API, but expect changes to be overwritten in a later update.
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedSAMLPropertyMappingRequestManaged :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | name
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedSAMLPropertyMappingRequestName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | saml_name
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedSAMLPropertyMappingRequestSamlName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PatchedSAMLPropertyMappingRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expression" Data.Aeson.Types.ToJSON..=)) (patchedSAMLPropertyMappingRequestExpression obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("friendly_name" Data.Aeson.Types.ToJSON..=)) (patchedSAMLPropertyMappingRequestFriendlyName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("managed" Data.Aeson.Types.ToJSON..=)) (patchedSAMLPropertyMappingRequestManaged obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedSAMLPropertyMappingRequestName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("saml_name" Data.Aeson.Types.ToJSON..=)) (patchedSAMLPropertyMappingRequestSamlName obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expression" Data.Aeson.Types.ToJSON..=)) (patchedSAMLPropertyMappingRequestExpression obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("friendly_name" Data.Aeson.Types.ToJSON..=)) (patchedSAMLPropertyMappingRequestFriendlyName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("managed" Data.Aeson.Types.ToJSON..=)) (patchedSAMLPropertyMappingRequestManaged obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (patchedSAMLPropertyMappingRequestName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("saml_name" Data.Aeson.Types.ToJSON..=)) (patchedSAMLPropertyMappingRequestSamlName obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PatchedSAMLPropertyMappingRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PatchedSAMLPropertyMappingRequest" (\obj -> ((((GHC.Base.pure PatchedSAMLPropertyMappingRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expression")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "friendly_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "managed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "saml_name"))

-- | Create a new 'PatchedSAMLPropertyMappingRequest' with all required fields.
mkPatchedSAMLPropertyMappingRequest :: PatchedSAMLPropertyMappingRequest
mkPatchedSAMLPropertyMappingRequest =
  PatchedSAMLPropertyMappingRequest
    { patchedSAMLPropertyMappingRequestExpression = GHC.Maybe.Nothing,
      patchedSAMLPropertyMappingRequestFriendlyName = GHC.Maybe.Nothing,
      patchedSAMLPropertyMappingRequestManaged = GHC.Maybe.Nothing,
      patchedSAMLPropertyMappingRequestName = GHC.Maybe.Nothing,
      patchedSAMLPropertyMappingRequestSamlName = GHC.Maybe.Nothing
    }
