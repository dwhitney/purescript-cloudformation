module CloudFormation.AWS.CodeDeploy.Application where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::CodeDeploy::Application`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-applicationname
-- | - `ComputePlatform`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-computeplatform
newtype Application = Application
  { "ApplicationName" :: Maybe String
  , "ComputePlatform" :: Maybe String
  }

derive instance newtypeApplication :: Newtype Application _
instance resourceApplication :: Resource Application where type_ _ = "AWS::CodeDeploy::Application"

application :: Application
application = Application
  { "ApplicationName" : Nothing
  , "ComputePlatform" : Nothing
  }