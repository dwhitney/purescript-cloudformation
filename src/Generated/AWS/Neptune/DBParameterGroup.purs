module CloudFormation.AWS.Neptune.DBParameterGroup where 

import CloudFormation (Json) as CF
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "Description" :: String
  , "Parameters" :: CF.Json
  , "Family" :: String
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

derive instance newtypeDBParameterGroup :: Newtype DBParameterGroup _
instance resourceDBParameterGroup :: Resource DBParameterGroup where type_ _ = "AWS::Neptune::DBParameterGroup"

dbpBParameterGroup :: { "Description" :: String, "Parameters" :: CF.Json, "Family" :: String } -> DBParameterGroup
dbpBParameterGroup required = DBParameterGroup
  (merge required
    { "Tags" : Nothing
    , "Name" : Nothing
    })