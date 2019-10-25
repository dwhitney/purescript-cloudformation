module CloudFormation.AWS.RDS.DBClusterParameterGroup where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::RDS::DBClusterParameterGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-description
-- | - `Family`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-family
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-parameters
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-tags
newtype DBClusterParameterGroup = DBClusterParameterGroup
  { "Description" :: Value String
  , "Family" :: Value String
  , "Parameters" :: Value CF.Json
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeDBClusterParameterGroup :: Newtype DBClusterParameterGroup _
derive newtype instance writeDBClusterParameterGroup :: WriteForeign DBClusterParameterGroup
instance resourceDBClusterParameterGroup :: Resource DBClusterParameterGroup where type_ _ = "AWS::RDS::DBClusterParameterGroup"

dbcBClusterParameterGroup :: { "Description" :: Value String, "Family" :: Value String, "Parameters" :: Value CF.Json } -> DBClusterParameterGroup
dbcBClusterParameterGroup required = DBClusterParameterGroup
  (merge required
    { "Tags" : Nothing
    })