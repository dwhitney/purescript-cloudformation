module CloudFormation.AWS.SecretsManager.RotationSchedule where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SecretsManager::RotationSchedule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html
-- |
-- | - `SecretId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-secretid
-- | - `RotationLambdaARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-rotationlambdaarn
-- | - `RotationRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-rotationschedule.html#cfn-secretsmanager-rotationschedule-rotationrules
newtype RotationSchedule = RotationSchedule
  { "SecretId" :: Value String
  , "RotationLambdaARN" :: Maybe (Value String)
  , "RotationRules" :: Maybe (Value RotationRules)
  }

derive instance newtypeRotationSchedule :: Newtype RotationSchedule _
derive newtype instance writeRotationSchedule :: WriteForeign RotationSchedule
instance resourceRotationSchedule :: Resource RotationSchedule where type_ _ = "AWS::SecretsManager::RotationSchedule"

rotationSchedule :: { "SecretId" :: Value String } -> RotationSchedule
rotationSchedule required = RotationSchedule
  (merge required
    { "RotationLambdaARN" : Nothing
    , "RotationRules" : Nothing
    })

-- | `AWS::SecretsManager::RotationSchedule.RotationRules`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html
-- |
-- | - `AutomaticallyAfterDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html#cfn-secretsmanager-rotationschedule-rotationrules-automaticallyafterdays
type RotationRules =
  { "AutomaticallyAfterDays" :: Maybe (Value Int)
  }

rotationRules :: RotationRules
rotationRules =
  { "AutomaticallyAfterDays" : Nothing
  }