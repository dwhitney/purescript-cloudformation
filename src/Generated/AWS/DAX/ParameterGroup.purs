module CloudFormation.AWS.DAX.ParameterGroup where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ParameterNameValues" :: Maybe (Value CF.Json)
  , "Description" :: Maybe (Value String)
  , "ParameterGroupName" :: Maybe (Value String)
  }

derive instance newtypeParameterGroup :: Newtype ParameterGroup _
derive newtype instance writeParameterGroup :: WriteForeign ParameterGroup
instance resourceParameterGroup :: Resource ParameterGroup where type_ _ = "AWS::DAX::ParameterGroup"

parameterGroup :: ParameterGroup
parameterGroup = ParameterGroup
  { "ParameterNameValues" : Nothing
  , "Description" : Nothing
  , "ParameterGroupName" : Nothing
  }