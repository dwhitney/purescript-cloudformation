module CloudFormation.AWS.SecretsManager.RotationSchedule where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::SecretsManager::RotationSchedule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html-- |
-- | - `SecretId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-secretid
-- | - `RotationLambdaARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-rotationlambdaarn
-- | - `RotationRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-rotationrules
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

-- | `AWS::SecretsManager::RotationSchedule.RotationRules`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html-- |
-- | - `AutomaticallyAfterDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html#cfn-secretsmanager-rotationschedule-rotationrules-automaticallyafterdays
type RotationRules =
  { "AutomaticallyAfterDays" :: Maybe Int
  }

rotationRules :: RotationRules
rotationRules =
  { "AutomaticallyAfterDays" : Nothing
  }