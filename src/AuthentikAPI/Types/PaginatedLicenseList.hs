{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaginatedLicenseList
module AuthentikAPI.Types.PaginatedLicenseList where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.License
import {-# SOURCE #-} AuthentikAPI.Types.Pagination
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

-- | Defines the object schema located at @components.schemas.PaginatedLicenseList@ in the specification.
data PaginatedLicenseList = PaginatedLicenseList
  { -- | pagination
    paginatedLicenseListPagination :: Pagination,
    -- | results
    paginatedLicenseListResults :: [License]
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaginatedLicenseList where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pagination" Data.Aeson.Types.ToJSON..= paginatedLicenseListPagination obj] : ["results" Data.Aeson.Types.ToJSON..= paginatedLicenseListResults obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pagination" Data.Aeson.Types.ToJSON..= paginatedLicenseListPagination obj] : ["results" Data.Aeson.Types.ToJSON..= paginatedLicenseListResults obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaginatedLicenseList where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaginatedLicenseList" (\obj -> (GHC.Base.pure PaginatedLicenseList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pagination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "results"))

-- | Create a new 'PaginatedLicenseList' with all required fields.
mkPaginatedLicenseList ::
  -- | 'paginatedLicenseListPagination'
  Pagination ->
  -- | 'paginatedLicenseListResults'
  [License] ->
  PaginatedLicenseList
mkPaginatedLicenseList paginatedLicenseListPagination paginatedLicenseListResults =
  PaginatedLicenseList
    { paginatedLicenseListPagination = paginatedLicenseListPagination,
      paginatedLicenseListResults = paginatedLicenseListResults
    }
