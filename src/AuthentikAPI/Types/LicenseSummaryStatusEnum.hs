{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema LicenseSummaryStatusEnum
module AuthentikAPI.Types.LicenseSummaryStatusEnum where

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

-- | Defines the enum schema located at @components.schemas.LicenseSummaryStatusEnum@ in the specification.
data LicenseSummaryStatusEnum
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    LicenseSummaryStatusEnumOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    LicenseSummaryStatusEnumTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"unlicensed"@
    LicenseSummaryStatusEnumEnumUnlicensed
  | -- | Represents the JSON value @"valid"@
    LicenseSummaryStatusEnumEnumValid
  | -- | Represents the JSON value @"expired"@
    LicenseSummaryStatusEnumEnumExpired
  | -- | Represents the JSON value @"expiry_soon"@
    LicenseSummaryStatusEnumEnumExpirySoon
  | -- | Represents the JSON value @"limit_exceeded_admin"@
    LicenseSummaryStatusEnumEnumLimitExceededAdmin
  | -- | Represents the JSON value @"limit_exceeded_user"@
    LicenseSummaryStatusEnumEnumLimitExceededUser
  | -- | Represents the JSON value @"read_only"@
    LicenseSummaryStatusEnumEnumReadOnly
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LicenseSummaryStatusEnum where
  toJSON (LicenseSummaryStatusEnumOther val) = val
  toJSON (LicenseSummaryStatusEnumTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (LicenseSummaryStatusEnumEnumUnlicensed) = "unlicensed"
  toJSON (LicenseSummaryStatusEnumEnumValid) = "valid"
  toJSON (LicenseSummaryStatusEnumEnumExpired) = "expired"
  toJSON (LicenseSummaryStatusEnumEnumExpirySoon) = "expiry_soon"
  toJSON (LicenseSummaryStatusEnumEnumLimitExceededAdmin) = "limit_exceeded_admin"
  toJSON (LicenseSummaryStatusEnumEnumLimitExceededUser) = "limit_exceeded_user"
  toJSON (LicenseSummaryStatusEnumEnumReadOnly) = "read_only"

instance Data.Aeson.Types.FromJSON.FromJSON LicenseSummaryStatusEnum where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "unlicensed" -> LicenseSummaryStatusEnumEnumUnlicensed
          | val GHC.Classes.== "valid" -> LicenseSummaryStatusEnumEnumValid
          | val GHC.Classes.== "expired" -> LicenseSummaryStatusEnumEnumExpired
          | val GHC.Classes.== "expiry_soon" -> LicenseSummaryStatusEnumEnumExpirySoon
          | val GHC.Classes.== "limit_exceeded_admin" -> LicenseSummaryStatusEnumEnumLimitExceededAdmin
          | val GHC.Classes.== "limit_exceeded_user" -> LicenseSummaryStatusEnumEnumLimitExceededUser
          | val GHC.Classes.== "read_only" -> LicenseSummaryStatusEnumEnumReadOnly
          | GHC.Base.otherwise -> LicenseSummaryStatusEnumOther val
      )
