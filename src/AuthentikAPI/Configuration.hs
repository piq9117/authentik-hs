-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the default configuration
module AuthentikAPI.Configuration where

import qualified AuthentikAPI.Common
import qualified Data.Text
import qualified Data.Text as Data.Text.Internal
import qualified GHC.Types

-- | The default url specified by the OpenAPI specification
--
-- @/api/v3/@
defaultURL = Data.Text.Internal.pack "/api/v3/"

-- | The default application name used in the @User-Agent@ header which is based on the @info.title@ field of the specification
--
-- @authentik@
defaultApplicationName = Data.Text.Internal.pack "authentik"

-- | The default configuration containing the 'defaultURL' and no authorization
defaultConfiguration = AuthentikAPI.Common.Configuration defaultURL AuthentikAPI.Common.anonymousSecurityScheme GHC.Types.True defaultApplicationName
