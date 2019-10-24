module Spec where

import Prelude

import Data.Maybe (Maybe)
import Effect (Effect)
import Foreign.Object (Object)
import Node.Encoding (Encoding(..))
import Node.FS.Sync as FS
import Simple.JSON (readJSON)
import Utils (liftEither)

type Property =
  { "Documentation"     :: Maybe String
  , "DuplicatesAllowed" :: Maybe Boolean
 
  , "ItemType"          :: Maybe String
  , "PrimitiveType"     :: Maybe String
  , "PrimitiveItemType" :: Maybe String
  , "Type"              :: Maybe String
  
  , "Required"          :: Maybe Boolean
  , "UpdateType"        :: Maybe String
  }

type Attribute =
  { "ItemType"          :: Maybe String
  , "PrimitiveType"     :: Maybe String
  , "PrimitiveItemType" :: Maybe String
  , "Type"              :: Maybe String
  }

type PropertyType =
  { "Documentation" :: Maybe String
  , "Properties" :: Maybe (Object Property)

  -- sometimes this is a straight up Property
  , "DuplicatesAllowed" :: Maybe Boolean
  , "ItemType"          :: Maybe String
  , "PrimitiveType"     :: Maybe String
  , "PrimitiveItemType" :: Maybe String
  , "Type"              :: Maybe String
  
  , "Required"          :: Maybe Boolean
  , "UpdateType"        :: Maybe String
  }

type ResourceType =
  { "Documentation" :: Maybe String
  , "Properties" :: Maybe (Object Property)
  , "Attributes" :: Maybe (Object Attribute)
  }


type Spec =
  { "ResourceSpecificationVersion" :: String
  , "PropertyTypes" :: Maybe (Object PropertyType)
  , "ResourceTypes" :: Maybe (Object ResourceType)
  }

getSpec :: Effect Spec
getSpec = do
  text <- FS.readTextFile UTF8 "./spec.json"
  liftEither (readJSON text)
