module CloudFormation.AWS.Neptune.DBClusterParameterGroup where 

import CloudFormation (Json) as CF
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Neptune::DBClusterParameterGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbclusterparametergroup.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbclusterparametergroup.html#cfn-neptune-dbclusterparametergroup-description
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbclusterparametergroup.html#cfn-neptune-dbclusterparametergroup-parameters
-- | - `Family`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbclusterparametergroup.html#cfn-neptune-dbclusterparametergroup-family
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbclusterparametergroup.html#cfn-neptune-dbclusterparametergroup-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbclusterparametergroup.html#cfn-neptune-dbclusterparametergroup-name
newtype DBClusterParameterGroup = DBClusterParameterGroup
  { "Description" :: String
  , "Parameters" :: CF.Json
  , "Family" :: String
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

derive instance newtypeDBClusterParameterGroup :: Newtype DBClusterParameterGroup _
instance resourceDBClusterParameterGroup :: Resource DBClusterParameterGroup where type_ _ = "AWS::Neptune::DBClusterParameterGroup"

dbcBClusterParameterGroup :: { "Description" :: String, "Parameters" :: CF.Json, "Family" :: String } -> DBClusterParameterGroup
dbcBClusterParameterGroup required = DBClusterParameterGroup
  (merge required
    { "Tags" : Nothing
    , "Name" : Nothing
    })