module CloudFormation.AWS.Inspector.AssessmentTarget where 

import Data.Maybe (Maybe(..))


type AssessmentTarget =
  { "AssessmentTargetName" :: Maybe String
  , "ResourceGroupArn" :: Maybe String
  }

assessmentTarget :: AssessmentTarget
assessmentTarget =
  { "AssessmentTargetName" : Nothing
  , "ResourceGroupArn" : Nothing
  }