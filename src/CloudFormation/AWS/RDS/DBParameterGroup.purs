module CloudFormation.AWS.RDS.DBParameterGroup where 

import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::RDS::DBParameterGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html#cfn-rds-dbparametergroup-description
-- | - `Family`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html#cfn-rds-dbparametergroup-family
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html#cfn-rds-dbparametergroup-parameters
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html#cfn-rds-dbparametergroup-tags
type DBParameterGroup =
  { "Description" :: String
  , "Family" :: String
  , "Parameters" :: Maybe (Object String)
  , "Tags" :: Maybe (Array Tag)
  }

dbpBParameterGroup :: { "Description" :: String, "Family" :: String } -> DBParameterGroup
dbpBParameterGroup required =
  merge required
    { "Parameters" : Nothing
    , "Tags" : Nothing
    }