module CloudFormation.AWS.Glue.Connection where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)


-- | `AWS::Glue::Connection`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-connection.html
-- |
-- | - `ConnectionInput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-connection.html#cfn-glue-connection-connectioninput
-- | - `CatalogId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-connection.html#cfn-glue-connection-catalogid
newtype Connection = Connection
  { "ConnectionInput" :: Value ConnectionInput
  , "CatalogId" :: Value String
  }

derive instance newtypeConnection :: Newtype Connection _
derive newtype instance writeConnection :: WriteForeign Connection
instance resourceConnection :: Resource Connection where type_ _ = "AWS::Glue::Connection"

connection :: { "ConnectionInput" :: Value ConnectionInput, "CatalogId" :: Value String } -> Connection
connection required = Connection
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
  { "AvailabilityZone" :: Maybe (Value String)
  , "SecurityGroupIdList" :: Maybe (Value (Array String))
  , "SubnetId" :: Maybe (Value String)
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
  { "ConnectionType" :: Value String
  , "ConnectionProperties" :: Value CF.Json
  , "Description" :: Maybe (Value String)
  , "MatchCriteria" :: Maybe (Value (Array String))
  , "PhysicalConnectionRequirements" :: Maybe (Value PhysicalConnectionRequirements)
  , "Name" :: Maybe (Value String)
  }

connectionInput :: { "ConnectionType" :: Value String, "ConnectionProperties" :: Value CF.Json } -> ConnectionInput
connectionInput required =
  (merge required
    { "Description" : Nothing
    , "MatchCriteria" : Nothing
    , "PhysicalConnectionRequirements" : Nothing
    , "Name" : Nothing
    })