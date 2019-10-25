module CloudFormation.AWS.CodeDeploy.Application where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CodeDeploy::Application`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-applicationname
-- | - `ComputePlatform`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-computeplatform
newtype Application = Application
  { "ApplicationName" :: Maybe (Value String)
  , "ComputePlatform" :: Maybe (Value String)
  }

derive instance newtypeApplication :: Newtype Application _
derive newtype instance writeApplication :: WriteForeign Application
instance resourceApplication :: Resource Application where type_ _ = "AWS::CodeDeploy::Application"

application :: Application
application = Application
  { "ApplicationName" : Nothing
  , "ComputePlatform" : Nothing
  }