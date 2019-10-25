module CloudFormation.AWS.Neptune.DBParameterGroup where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Neptune::DBParameterGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-description
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-parameters
-- | - `Family`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-family
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-name
newtype DBParameterGroup = DBParameterGroup
  { "Description" :: Value String
  , "Parameters" :: Value CF.Json
  , "Family" :: Value String
  , "Tags" :: Maybe (Value (Array Tag))
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeDBParameterGroup :: Newtype DBParameterGroup _
derive newtype instance writeDBParameterGroup :: WriteForeign DBParameterGroup
instance resourceDBParameterGroup :: Resource DBParameterGroup where type_ _ = "AWS::Neptune::DBParameterGroup"

dbpBParameterGroup :: { "Description" :: Value String, "Parameters" :: Value CF.Json, "Family" :: Value String } -> DBParameterGroup
dbpBParameterGroup required = DBParameterGroup
  (merge required
    { "Tags" : Nothing
    , "Name" : Nothing
    })