{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaginatedEmailStageList
module AuthentikAPI.Types.PaginatedEmailStageList where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.EmailStage
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

-- | Defines the object schema located at @components.schemas.PaginatedEmailStageList@ in the specification.
data PaginatedEmailStageList = PaginatedEmailStageList
  { -- | pagination
    paginatedEmailStageListPagination :: Pagination,
    -- | results
    paginatedEmailStageListResults :: [EmailStage]
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaginatedEmailStageList where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pagination" Data.Aeson.Types.ToJSON..= paginatedEmailStageListPagination obj] : ["results" Data.Aeson.Types.ToJSON..= paginatedEmailStageListResults obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pagination" Data.Aeson.Types.ToJSON..= paginatedEmailStageListPagination obj] : ["results" Data.Aeson.Types.ToJSON..= paginatedEmailStageListResults obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaginatedEmailStageList where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaginatedEmailStageList" (\obj -> (GHC.Base.pure PaginatedEmailStageList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pagination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "results"))

-- | Create a new 'PaginatedEmailStageList' with all required fields.
mkPaginatedEmailStageList ::
  -- | 'paginatedEmailStageListPagination'
  Pagination ->
  -- | 'paginatedEmailStageListResults'
  [EmailStage] ->
  PaginatedEmailStageList
mkPaginatedEmailStageList paginatedEmailStageListPagination paginatedEmailStageListResults =
  PaginatedEmailStageList
    { paginatedEmailStageListPagination = paginatedEmailStageListPagination,
      paginatedEmailStageListResults = paginatedEmailStageListResults
    }
