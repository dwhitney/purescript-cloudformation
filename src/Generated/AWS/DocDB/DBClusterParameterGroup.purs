module CloudFormation.AWS.DocDB.DBClusterParameterGroup where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Description" :: Value String
  , "Parameters" :: Value CF.Json
  , "Family" :: Value String
  , "Tags" :: Maybe (Value (Array Tag))
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeDBClusterParameterGroup :: Newtype DBClusterParameterGroup _
derive newtype instance writeDBClusterParameterGroup :: WriteForeign DBClusterParameterGroup
instance resourceDBClusterParameterGroup :: Resource DBClusterParameterGroup where type_ _ = "AWS::DocDB::DBClusterParameterGroup"

dbcBClusterParameterGroup :: { "Description" :: Value String, "Parameters" :: Value CF.Json, "Family" :: Value String } -> DBClusterParameterGroup
dbcBClusterParameterGroup required = DBClusterParameterGroup
  (merge required
    { "Tags" : Nothing
    , "Name" : Nothing
    })