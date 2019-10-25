module CloudFormation.AWS.Inspector.AssessmentTemplate where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Inspector::AssessmentTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html
-- |
-- | - `AssessmentTargetArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-assessmenttargetarn
-- | - `DurationInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-durationinseconds
-- | - `AssessmentTemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-assessmenttemplatename
-- | - `RulesPackageArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-rulespackagearns
-- | - `UserAttributesForFindings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-userattributesforfindings
newtype AssessmentTemplate = AssessmentTemplate
  { "AssessmentTargetArn" :: Value String
  , "DurationInSeconds" :: Value Int
  , "RulesPackageArns" :: Value (Array String)
  , "AssessmentTemplateName" :: Maybe (Value String)
  , "UserAttributesForFindings" :: Maybe (Value (Array Tag))
  }

derive instance newtypeAssessmentTemplate :: Newtype AssessmentTemplate _
derive newtype instance writeAssessmentTemplate :: WriteForeign AssessmentTemplate
instance resourceAssessmentTemplate :: Resource AssessmentTemplate where type_ _ = "AWS::Inspector::AssessmentTemplate"

assessmentTemplate :: { "AssessmentTargetArn" :: Value String, "DurationInSeconds" :: Value Int, "RulesPackageArns" :: Value (Array String) } -> AssessmentTemplate
assessmentTemplate required = AssessmentTemplate
  (merge required
    { "AssessmentTemplateName" : Nothing
    , "UserAttributesForFindings" : Nothing
    })