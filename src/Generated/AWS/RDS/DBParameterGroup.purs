module CloudFormation.AWS.RDS.DBParameterGroup where 

import CloudFormation (Value)
import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Description" :: Value String
  , "Family" :: Value String
  , "Parameters" :: Maybe (Value (Object String))
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeDBParameterGroup :: Newtype DBParameterGroup _
derive newtype instance writeDBParameterGroup :: WriteForeign DBParameterGroup
instance resourceDBParameterGroup :: Resource DBParameterGroup where type_ _ = "AWS::RDS::DBParameterGroup"

dbpBParameterGroup :: { "Description" :: Value String, "Family" :: Value String } -> DBParameterGroup
dbpBParameterGroup required = DBParameterGroup
  (merge required
    { "Parameters" : Nothing
    , "Tags" : Nothing
    })