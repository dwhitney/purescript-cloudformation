module CloudFormation.AWS.RDS.DBParameterGroup where 

import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype DBParameterGroup = DBParameterGroup
  { "Description" :: String
  , "Family" :: String
  , "Parameters" :: Maybe (Object String)
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeDBParameterGroup :: Newtype DBParameterGroup _
instance resourceDBParameterGroup :: Resource DBParameterGroup where type_ _ = "AWS::RDS::DBParameterGroup"

dbpBParameterGroup :: { "Description" :: String, "Family" :: String } -> DBParameterGroup
dbpBParameterGroup required = DBParameterGroup
  (merge required
    { "Parameters" : Nothing
    , "Tags" : Nothing
    })