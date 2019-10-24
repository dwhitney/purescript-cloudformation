module CloudFormation.AWS.Inspector.AssessmentTarget where 

import Data.Maybe (Maybe(..))


-- | `AWS::Inspector::AssessmentTarget`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttarget.html-- |
-- | - `AssessmentTargetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttarget.html#cfn-inspector-assessmenttarget-assessmenttargetname
-- | - `ResourceGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttarget.html#cfn-inspector-assessmenttarget-resourcegrouparn
type AssessmentTarget =
  { "AssessmentTargetName" :: Maybe String
  , "ResourceGroupArn" :: Maybe String
  }

assessmentTarget :: AssessmentTarget
assessmentTarget =
  { "AssessmentTargetName" : Nothing
  , "ResourceGroupArn" : Nothing
  }