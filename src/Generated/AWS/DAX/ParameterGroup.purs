module CloudFormation.AWS.DAX.ParameterGroup where 

import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::DAX::ParameterGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-parametergroup.html
-- |
-- | - `ParameterNameValues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-parametergroup.html#cfn-dax-parametergroup-parameternamevalues
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-parametergroup.html#cfn-dax-parametergroup-description
-- | - `ParameterGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-parametergroup.html#cfn-dax-parametergroup-parametergroupname
newtype ParameterGroup = ParameterGroup
  { "ParameterNameValues" :: Maybe CF.Json
  , "Description" :: Maybe String
  , "ParameterGroupName" :: Maybe String
  }

derive instance newtypeParameterGroup :: Newtype ParameterGroup _
instance resourceParameterGroup :: Resource ParameterGroup where type_ _ = "AWS::DAX::ParameterGroup"

parameterGroup :: ParameterGroup
parameterGroup = ParameterGroup
  { "ParameterNameValues" : Nothing
  , "Description" : Nothing
  , "ParameterGroupName" : Nothing
  }