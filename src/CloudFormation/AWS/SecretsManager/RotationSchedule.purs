module CloudFormation.AWS.SecretsManager.RotationSchedule where 

import Data.Maybe (Maybe(..))
import Record (merge)


type RotationSchedule =
  { "SecretId" :: String
  , "RotationLambdaARN" :: Maybe String
  , "RotationRules" :: Maybe RotationRules
  }

rotationSchedule :: { "SecretId" :: String } -> RotationSchedule
rotationSchedule required =
  merge required
    { "RotationLambdaARN" : Nothing
    , "RotationRules" : Nothing
    }

type RotationRules =
  { "AutomaticallyAfterDays" :: Maybe Int
  }

rotationRules :: RotationRules
rotationRules =
  { "AutomaticallyAfterDays" : Nothing
  }