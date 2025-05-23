{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PatchedUserOAuthSourceConnectionRequest
module AuthentikAPI.Types.PatchedUserOAuthSourceConnectionRequest where

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

-- | Defines the object schema located at @components.schemas.PatchedUserOAuthSourceConnectionRequest@ in the specification.
--
-- User source connection
data PatchedUserOAuthSourceConnectionRequest = PatchedUserOAuthSourceConnectionRequest
  { -- | access_token
    patchedUserOAuthSourceConnectionRequestAccessToken :: (GHC.Maybe.Maybe (AuthentikAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | identifier
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    patchedUserOAuthSourceConnectionRequestIdentifier :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | source
    patchedUserOAuthSourceConnectionRequestSource :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | user
    patchedUserOAuthSourceConnectionRequestUser :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PatchedUserOAuthSourceConnectionRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("access_token" Data.Aeson.Types.ToJSON..=)) (patchedUserOAuthSourceConnectionRequestAccessToken obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("identifier" Data.Aeson.Types.ToJSON..=)) (patchedUserOAuthSourceConnectionRequestIdentifier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source" Data.Aeson.Types.ToJSON..=)) (patchedUserOAuthSourceConnectionRequestSource obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (patchedUserOAuthSourceConnectionRequestUser obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("access_token" Data.Aeson.Types.ToJSON..=)) (patchedUserOAuthSourceConnectionRequestAccessToken obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("identifier" Data.Aeson.Types.ToJSON..=)) (patchedUserOAuthSourceConnectionRequestIdentifier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source" Data.Aeson.Types.ToJSON..=)) (patchedUserOAuthSourceConnectionRequestSource obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (patchedUserOAuthSourceConnectionRequestUser obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PatchedUserOAuthSourceConnectionRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PatchedUserOAuthSourceConnectionRequest" (\obj -> (((GHC.Base.pure PatchedUserOAuthSourceConnectionRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "access_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "identifier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user"))

-- | Create a new 'PatchedUserOAuthSourceConnectionRequest' with all required fields.
mkPatchedUserOAuthSourceConnectionRequest :: PatchedUserOAuthSourceConnectionRequest
mkPatchedUserOAuthSourceConnectionRequest =
  PatchedUserOAuthSourceConnectionRequest
    { patchedUserOAuthSourceConnectionRequestAccessToken = GHC.Maybe.Nothing,
      patchedUserOAuthSourceConnectionRequestIdentifier = GHC.Maybe.Nothing,
      patchedUserOAuthSourceConnectionRequestSource = GHC.Maybe.Nothing,
      patchedUserOAuthSourceConnectionRequestUser = GHC.Maybe.Nothing
    }
