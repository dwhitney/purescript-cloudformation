module CloudFormation.AWS.Glue.Connection where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Connection =
  { "ConnectionInput" :: ConnectionInput
  , "CatalogId" :: String
  }

connection :: { "ConnectionInput" :: ConnectionInput, "CatalogId" :: String } -> Connection
connection required =
  required

type PhysicalConnectionRequirements =
  { "AvailabilityZone" :: Maybe String
  , "SecurityGroupIdList" :: Maybe (Array String)
  , "SubnetId" :: Maybe String
  }

physicalConnectionRequirements :: PhysicalConnectionRequirements
physicalConnectionRequirements =
  { "AvailabilityZone" : Nothing
  , "SecurityGroupIdList" : Nothing
  , "SubnetId" : Nothing
  }

type ConnectionInput =
  { "ConnectionType" :: String
  , "ConnectionProperties" :: Foreign
  , "Description" :: Maybe String
  , "MatchCriteria" :: Maybe (Array String)
  , "PhysicalConnectionRequirements" :: Maybe PhysicalConnectionRequirements
  , "Name" :: Maybe String
  }

connectionInput :: { "ConnectionType" :: String, "ConnectionProperties" :: Foreign } -> ConnectionInput
connectionInput required =
  merge required
    { "Description" : Nothing
    , "MatchCriteria" : Nothing
    , "PhysicalConnectionRequirements" : Nothing
    , "Name" : Nothing
    }