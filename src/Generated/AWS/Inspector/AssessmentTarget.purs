module CloudFormation.AWS.Inspector.AssessmentTarget where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Inspector::AssessmentTarget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttarget.html
-- |
-- | - `AssessmentTargetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttarget.html#cfn-inspector-assessmenttarget-assessmenttargetname
-- | - `ResourceGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttarget.html#cfn-inspector-assessmenttarget-resourcegrouparn
newtype AssessmentTarget = AssessmentTarget
  { "AssessmentTargetName" :: Maybe (Value String)
  , "ResourceGroupArn" :: Maybe (Value String)
  }

derive instance newtypeAssessmentTarget :: Newtype AssessmentTarget _
derive newtype instance writeAssessmentTarget :: WriteForeign AssessmentTarget
instance resourceAssessmentTarget :: Resource AssessmentTarget where type_ _ = "AWS::Inspector::AssessmentTarget"

assessmentTarget :: AssessmentTarget
assessmentTarget = AssessmentTarget
  { "AssessmentTargetName" : Nothing
  , "ResourceGroupArn" : Nothing
  }