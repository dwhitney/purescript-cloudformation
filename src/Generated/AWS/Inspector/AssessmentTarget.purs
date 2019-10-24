module CloudFormation.AWS.Inspector.AssessmentTarget where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Inspector::AssessmentTarget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttarget.html
-- |
-- | - `AssessmentTargetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttarget.html#cfn-inspector-assessmenttarget-assessmenttargetname
-- | - `ResourceGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttarget.html#cfn-inspector-assessmenttarget-resourcegrouparn
newtype AssessmentTarget = AssessmentTarget
  { "AssessmentTargetName" :: Maybe String
  , "ResourceGroupArn" :: Maybe String
  }

derive instance newtypeAssessmentTarget :: Newtype AssessmentTarget _
instance resourceAssessmentTarget :: Resource AssessmentTarget where type_ _ = "AWS::Inspector::AssessmentTarget"

assessmentTarget :: AssessmentTarget
assessmentTarget = AssessmentTarget
  { "AssessmentTargetName" : Nothing
  , "ResourceGroupArn" : Nothing
  }