module CloudFormation.AWS.CodeDeploy.Application where 

import Data.Maybe (Maybe(..))


-- | `AWS::CodeDeploy::Application`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-applicationname
-- | - `ComputePlatform`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-computeplatform
type Application =
  { "ApplicationName" :: Maybe String
  , "ComputePlatform" :: Maybe String
  }

application :: Application
application =
  { "ApplicationName" : Nothing
  , "ComputePlatform" : Nothing
  }