module CloudFormation.AWS.Inspector.AssessmentTemplate where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "AssessmentTargetArn" :: String
  , "DurationInSeconds" :: Int
  , "RulesPackageArns" :: Array String
  , "AssessmentTemplateName" :: Maybe String
  , "UserAttributesForFindings" :: Maybe (Array Tag)
  }

derive instance newtypeAssessmentTemplate :: Newtype AssessmentTemplate _
instance resourceAssessmentTemplate :: Resource AssessmentTemplate where type_ _ = "AWS::Inspector::AssessmentTemplate"

assessmentTemplate :: { "AssessmentTargetArn" :: String, "DurationInSeconds" :: Int, "RulesPackageArns" :: Array String } -> AssessmentTemplate
assessmentTemplate required = AssessmentTemplate
  (merge required
    { "AssessmentTemplateName" : Nothing
    , "UserAttributesForFindings" : Nothing
    })