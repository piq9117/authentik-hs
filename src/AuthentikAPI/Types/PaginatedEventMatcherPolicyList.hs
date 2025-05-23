{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaginatedEventMatcherPolicyList
module AuthentikAPI.Types.PaginatedEventMatcherPolicyList where

import qualified AuthentikAPI.Common
import AuthentikAPI.TypeAlias
import {-# SOURCE #-} AuthentikAPI.Types.EventMatcherPolicy
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

-- | Defines the object schema located at @components.schemas.PaginatedEventMatcherPolicyList@ in the specification.
data PaginatedEventMatcherPolicyList = PaginatedEventMatcherPolicyList
  { -- | pagination
    paginatedEventMatcherPolicyListPagination :: Pagination,
    -- | results
    paginatedEventMatcherPolicyListResults :: [EventMatcherPolicy]
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaginatedEventMatcherPolicyList where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pagination" Data.Aeson.Types.ToJSON..= paginatedEventMatcherPolicyListPagination obj] : ["results" Data.Aeson.Types.ToJSON..= paginatedEventMatcherPolicyListResults obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pagination" Data.Aeson.Types.ToJSON..= paginatedEventMatcherPolicyListPagination obj] : ["results" Data.Aeson.Types.ToJSON..= paginatedEventMatcherPolicyListResults obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaginatedEventMatcherPolicyList where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaginatedEventMatcherPolicyList" (\obj -> (GHC.Base.pure PaginatedEventMatcherPolicyList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pagination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "results"))

-- | Create a new 'PaginatedEventMatcherPolicyList' with all required fields.
mkPaginatedEventMatcherPolicyList ::
  -- | 'paginatedEventMatcherPolicyListPagination'
  Pagination ->
  -- | 'paginatedEventMatcherPolicyListResults'
  [EventMatcherPolicy] ->
  PaginatedEventMatcherPolicyList
mkPaginatedEventMatcherPolicyList paginatedEventMatcherPolicyListPagination paginatedEventMatcherPolicyListResults =
  PaginatedEventMatcherPolicyList
    { paginatedEventMatcherPolicyListPagination = paginatedEventMatcherPolicyListPagination,
      paginatedEventMatcherPolicyListResults = paginatedEventMatcherPolicyListResults
    }
