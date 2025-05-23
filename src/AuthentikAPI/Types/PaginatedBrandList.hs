{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaginatedBrandList
module AuthentikAPI.Types.PaginatedBrandList where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.Brand
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

-- | Defines the object schema located at @components.schemas.PaginatedBrandList@ in the specification.
data PaginatedBrandList = PaginatedBrandList
  { -- | pagination
    paginatedBrandListPagination :: Pagination,
    -- | results
    paginatedBrandListResults :: [Brand]
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaginatedBrandList where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pagination" Data.Aeson.Types.ToJSON..= paginatedBrandListPagination obj] : ["results" Data.Aeson.Types.ToJSON..= paginatedBrandListResults obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pagination" Data.Aeson.Types.ToJSON..= paginatedBrandListPagination obj] : ["results" Data.Aeson.Types.ToJSON..= paginatedBrandListResults obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaginatedBrandList where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaginatedBrandList" (\obj -> (GHC.Base.pure PaginatedBrandList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pagination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "results"))

-- | Create a new 'PaginatedBrandList' with all required fields.
mkPaginatedBrandList ::
  -- | 'paginatedBrandListPagination'
  Pagination ->
  -- | 'paginatedBrandListResults'
  [Brand] ->
  PaginatedBrandList
mkPaginatedBrandList paginatedBrandListPagination paginatedBrandListResults =
  PaginatedBrandList
    { paginatedBrandListPagination = paginatedBrandListPagination,
      paginatedBrandListResults = paginatedBrandListResults
    }
