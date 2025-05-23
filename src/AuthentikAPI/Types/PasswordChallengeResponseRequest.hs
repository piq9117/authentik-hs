{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PasswordChallengeResponseRequest
module AuthentikAPI.Types.PasswordChallengeResponseRequest where

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

-- | Defines the object schema located at @components.schemas.PasswordChallengeResponseRequest@ in the specification.
--
-- Password challenge response
data PasswordChallengeResponseRequest = PasswordChallengeResponseRequest
  { -- | component
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    passwordChallengeResponseRequestComponent :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | password
    --
    -- Constraints:
    --
    -- * Minimum length of 1
    passwordChallengeResponseRequestPassword :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PasswordChallengeResponseRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("component" Data.Aeson.Types.ToJSON..=)) (passwordChallengeResponseRequestComponent obj) : ["password" Data.Aeson.Types.ToJSON..= passwordChallengeResponseRequestPassword obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("component" Data.Aeson.Types.ToJSON..=)) (passwordChallengeResponseRequestComponent obj) : ["password" Data.Aeson.Types.ToJSON..= passwordChallengeResponseRequestPassword obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PasswordChallengeResponseRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PasswordChallengeResponseRequest" (\obj -> (GHC.Base.pure PasswordChallengeResponseRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "component")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "password"))

-- | Create a new 'PasswordChallengeResponseRequest' with all required fields.
mkPasswordChallengeResponseRequest ::
  -- | 'passwordChallengeResponseRequestPassword'
  Data.Text.Internal.Text ->
  PasswordChallengeResponseRequest
mkPasswordChallengeResponseRequest passwordChallengeResponseRequestPassword =
  PasswordChallengeResponseRequest
    { passwordChallengeResponseRequestComponent = GHC.Maybe.Nothing,
      passwordChallengeResponseRequestPassword = passwordChallengeResponseRequestPassword
    }
