module CloudFormation.AWS.Glue.Connection where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


-- | `AWS::Glue::Connection`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-connection.html
-- |
-- | - `ConnectionInput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-connection.html#cfn-glue-connection-connectioninput
-- | - `CatalogId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-connection.html#cfn-glue-connection-catalogid
type Connection =
  { "ConnectionInput" :: ConnectionInput
  , "CatalogId" :: String
  }

connection :: { "ConnectionInput" :: ConnectionInput, "CatalogId" :: String } -> Connection
connection required =
  required

-- | `AWS::Glue::Connection.PhysicalConnectionRequirements`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-physicalconnectionrequirements.html
-- |
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-physicalconnectionrequirements.html#cfn-glue-connection-physicalconnectionrequirements-availabilityzone
-- | - `SecurityGroupIdList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-physicalconnectionrequirements.html#cfn-glue-connection-physicalconnectionrequirements-securitygroupidlist
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-physicalconnectionrequirements.html#cfn-glue-connection-physicalconnectionrequirements-subnetid
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

-- | `AWS::Glue::Connection.ConnectionInput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-description
-- | - `ConnectionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-connectiontype
-- | - `MatchCriteria`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-matchcriteria
-- | - `PhysicalConnectionRequirements`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-physicalconnectionrequirements
-- | - `ConnectionProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-connectionproperties
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-connectioninput.html#cfn-glue-connection-connectioninput-name
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