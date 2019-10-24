module CloudFormation.AWS.Inspector.AssessmentTemplate where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


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