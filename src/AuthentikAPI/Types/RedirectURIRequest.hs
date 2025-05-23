{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema RedirectURIRequest
module AuthentikAPI.Types.RedirectURIRequest where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.MatchingModeEnum
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

-- | Defines the object schema located at @components.schemas.RedirectURIRequest@ in the specification.
--
-- A single allowed redirect URI entry
data RedirectURIRequest = RedirectURIRequest
  { -- | matching_mode
    redirectURIRequestMatchingMode :: MatchingModeEnum,
    -- | url
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    redirectURIRequestUrl :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON RedirectURIRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["matching_mode" Data.Aeson.Types.ToJSON..= redirectURIRequestMatchingMode obj] : ["url" Data.Aeson.Types.ToJSON..= redirectURIRequestUrl obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["matching_mode" Data.Aeson.Types.ToJSON..= redirectURIRequestMatchingMode obj] : ["url" Data.Aeson.Types.ToJSON..= redirectURIRequestUrl obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON RedirectURIRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "RedirectURIRequest" (\obj -> (GHC.Base.pure RedirectURIRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "matching_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'RedirectURIRequest' with all required fields.
mkRedirectURIRequest ::
  -- | 'redirectURIRequestMatchingMode'
  MatchingModeEnum ->
  -- | 'redirectURIRequestUrl'
  Data.Text.Internal.Text ->
  RedirectURIRequest
mkRedirectURIRequest redirectURIRequestMatchingMode redirectURIRequestUrl =
  RedirectURIRequest
    { redirectURIRequestMatchingMode = redirectURIRequestMatchingMode,
      redirectURIRequestUrl = redirectURIRequestUrl
    }
