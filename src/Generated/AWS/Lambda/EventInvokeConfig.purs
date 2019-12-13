module CloudFormation.AWS.Lambda.EventInvokeConfig where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Lambda::EventInvokeConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html
-- |
-- | - `FunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-functionname
-- | - `MaximumRetryAttempts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-maximumretryattempts
-- | - `DestinationConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-destinationconfig
-- | - `Qualifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-qualifier
-- | - `MaximumEventAgeInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-maximumeventageinseconds
newtype EventInvokeConfig = EventInvokeConfig
  { "FunctionName" :: Value String
  , "Qualifier" :: Value String
  , "MaximumRetryAttempts" :: Maybe (Value Int)
  , "DestinationConfig" :: Maybe (Value DestinationConfig)
  , "MaximumEventAgeInSeconds" :: Maybe (Value Int)
  }

derive instance newtypeEventInvokeConfig :: Newtype EventInvokeConfig _
derive newtype instance writeEventInvokeConfig :: WriteForeign EventInvokeConfig
instance resourceEventInvokeConfig :: Resource EventInvokeConfig where type_ _ = "AWS::Lambda::EventInvokeConfig"

eventInvokeConfig :: { "FunctionName" :: Value String, "Qualifier" :: Value String } -> EventInvokeConfig
eventInvokeConfig required = EventInvokeConfig
  (merge required
    { "MaximumRetryAttempts" : Nothing
    , "DestinationConfig" : Nothing
    , "MaximumEventAgeInSeconds" : Nothing
    })

-- | `AWS::Lambda::EventInvokeConfig.DestinationConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig.html
-- |
-- | - `OnSuccess`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig.html#cfn-lambda-eventinvokeconfig-destinationconfig-onsuccess
-- | - `OnFailure`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig.html#cfn-lambda-eventinvokeconfig-destinationconfig-onfailure
type DestinationConfig =
  { "OnSuccess" :: Maybe (Value OnSuccess)
  , "OnFailure" :: Maybe (Value OnFailure)
  }

destinationConfig :: DestinationConfig
destinationConfig =
  { "OnSuccess" : Nothing
  , "OnFailure" : Nothing
  }

-- | `AWS::Lambda::EventInvokeConfig.OnSuccess`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig-onsuccess.html
-- |
-- | - `Destination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig-onsuccess.html#cfn-lambda-eventinvokeconfig-destinationconfig-onsuccess-destination
type OnSuccess =
  { "Destination" :: Value String
  }

onSuccess :: { "Destination" :: Value String } -> OnSuccess
onSuccess required =
  required

-- | `AWS::Lambda::EventInvokeConfig.OnFailure`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig-onfailure.html
-- |
-- | - `Destination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig-onfailure.html#cfn-lambda-eventinvokeconfig-destinationconfig-onfailure-destination
type OnFailure =
  { "Destination" :: Value String
  }

onFailure :: { "Destination" :: Value String } -> OnFailure
onFailure required =
  required