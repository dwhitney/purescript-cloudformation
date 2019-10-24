module AWS.CodePipeline.CustomActionType where 

import Data.Maybe (Maybe(..))
import Record (merge)


type CustomActionType =
  { "Category" :: String
  , "InputArtifactDetails" :: ArtifactDetails
  , "OutputArtifactDetails" :: ArtifactDetails
  , "Provider" :: String
  , "Version" :: String
  , "ConfigurationProperties" :: Maybe (Array ConfigurationProperties)
  , "Settings" :: Maybe Settings
  }

customActionType :: { "Category" :: String, "InputArtifactDetails" :: ArtifactDetails, "OutputArtifactDetails" :: ArtifactDetails, "Provider" :: String, "Version" :: String } -> CustomActionType
customActionType required =
  merge required
    { "ConfigurationProperties" : Nothing
    , "Settings" : Nothing
    }

type Settings =
  { "EntityUrlTemplate" :: Maybe String
  , "ExecutionUrlTemplate" :: Maybe String
  , "RevisionUrlTemplate" :: Maybe String
  , "ThirdPartyConfigurationUrl" :: Maybe String
  }

settings :: Settings
settings =
  { "EntityUrlTemplate" : Nothing
  , "ExecutionUrlTemplate" : Nothing
  , "RevisionUrlTemplate" : Nothing
  , "ThirdPartyConfigurationUrl" : Nothing
  }

type ConfigurationProperties =
  { "Key" :: Boolean
  , "Name" :: String
  , "Required" :: Boolean
  , "Secret" :: Boolean
  , "Description" :: Maybe String
  , "Queryable" :: Maybe Boolean
  , "Type" :: Maybe String
  }

configurationProperties :: { "Key" :: Boolean, "Name" :: String, "Required" :: Boolean, "Secret" :: Boolean } -> ConfigurationProperties
configurationProperties required =
  merge required
    { "Description" : Nothing
    , "Queryable" : Nothing
    , "Type" : Nothing
    }

type ArtifactDetails =
  { "MaximumCount" :: Int
  , "MinimumCount" :: Int
  }

artifactDetails :: { "MaximumCount" :: Int, "MinimumCount" :: Int } -> ArtifactDetails
artifactDetails required =
  required