module CloudFormation.AWS.DAX.ParameterGroup where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))


-- | `AWS::DAX::ParameterGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-parametergroup.html-- |
-- | - `ParameterNameValues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-parametergroup.html#cfn-dax-parametergroup-parameternamevalues
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-parametergroup.html#cfn-dax-parametergroup-description
-- | - `ParameterGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-parametergroup.html#cfn-dax-parametergroup-parametergroupname
type ParameterGroup =
  { "ParameterNameValues" :: Maybe Foreign
  , "Description" :: Maybe String
  , "ParameterGroupName" :: Maybe String
  }

parameterGroup :: ParameterGroup
parameterGroup =
  { "ParameterNameValues" : Nothing
  , "Description" : Nothing
  , "ParameterGroupName" : Nothing
  }