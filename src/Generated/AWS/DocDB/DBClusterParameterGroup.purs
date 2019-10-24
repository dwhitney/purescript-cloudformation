module CloudFormation.AWS.DocDB.DBClusterParameterGroup where 

import CloudFormation (Json) as CF
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::DocDB::DBClusterParameterGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbclusterparametergroup.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbclusterparametergroup.html#cfn-docdb-dbclusterparametergroup-description
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbclusterparametergroup.html#cfn-docdb-dbclusterparametergroup-parameters
-- | - `Family`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbclusterparametergroup.html#cfn-docdb-dbclusterparametergroup-family
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbclusterparametergroup.html#cfn-docdb-dbclusterparametergroup-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbclusterparametergroup.html#cfn-docdb-dbclusterparametergroup-name
newtype DBClusterParameterGroup = DBClusterParameterGroup
  { "Description" :: String
  , "Parameters" :: CF.Json
  , "Family" :: String
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

derive instance newtypeDBClusterParameterGroup :: Newtype DBClusterParameterGroup _
instance resourceDBClusterParameterGroup :: Resource DBClusterParameterGroup where type_ _ = "AWS::DocDB::DBClusterParameterGroup"

dbcBClusterParameterGroup :: { "Description" :: String, "Parameters" :: CF.Json, "Family" :: String } -> DBClusterParameterGroup
dbcBClusterParameterGroup required = DBClusterParameterGroup
  (merge required
    { "Tags" : Nothing
    , "Name" : Nothing
    })