{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema DuoResponseEnum
module AuthentikAPI.Types.DuoResponseEnum where

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

-- | Defines the enum schema located at @components.schemas.DuoResponseEnum@ in the specification.
data DuoResponseEnum
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    DuoResponseEnumOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    DuoResponseEnumTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"success"@
    DuoResponseEnumEnumSuccess
  | -- | Represents the JSON value @"waiting"@
    DuoResponseEnumEnumWaiting
  | -- | Represents the JSON value @"invalid"@
    DuoResponseEnumEnumInvalid
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON DuoResponseEnum where
  toJSON (DuoResponseEnumOther val) = val
  toJSON (DuoResponseEnumTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (DuoResponseEnumEnumSuccess) = "success"
  toJSON (DuoResponseEnumEnumWaiting) = "waiting"
  toJSON (DuoResponseEnumEnumInvalid) = "invalid"

instance Data.Aeson.Types.FromJSON.FromJSON DuoResponseEnum where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "success" -> DuoResponseEnumEnumSuccess
          | val GHC.Classes.== "waiting" -> DuoResponseEnumEnumWaiting
          | val GHC.Classes.== "invalid" -> DuoResponseEnumEnumInvalid
          | GHC.Base.otherwise -> DuoResponseEnumOther val
      )
