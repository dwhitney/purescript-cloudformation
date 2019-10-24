module CloudFormation.AWS.Inspector.AssessmentTemplate where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::Inspector::AssessmentTemplate`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html-- |
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
type AssessmentTemplate =
  { "AssessmentTargetArn" :: String
  , "DurationInSeconds" :: Int
  , "RulesPackageArns" :: Array String
  , "AssessmentTemplateName" :: Maybe String
  , "UserAttributesForFindings" :: Maybe (Array Tag)
  }

assessmentTemplate :: { "AssessmentTargetArn" :: String, "DurationInSeconds" :: Int, "RulesPackageArns" :: Array String } -> AssessmentTemplate
assessmentTemplate required =
  merge required
    { "AssessmentTemplateName" : Nothing
    , "UserAttributesForFindings" : Nothing
    }