module CloudFormation.AWS.ApiGateway.UsagePlan where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)


-- | `AWS::ApiGateway::UsagePlan`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html-- |
-- | - `ApiStages`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html#cfn-apigateway-usageplan-apistages
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html#cfn-apigateway-usageplan-description
-- | - `Quota`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html#cfn-apigateway-usageplan-quota
-- | - `Throttle`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html#cfn-apigateway-usageplan-throttle
-- | - `UsagePlanName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html#cfn-apigateway-usageplan-usageplanname
type UsagePlan =
  { "ApiStages" :: Maybe (Array ApiStage)
  , "Description" :: Maybe String
  , "Quota" :: Maybe QuotaSettings
  , "Throttle" :: Maybe ThrottleSettings
  , "UsagePlanName" :: Maybe String
  }

usagePlan :: UsagePlan
usagePlan =
  { "ApiStages" : Nothing
  , "Description" : Nothing
  , "Quota" : Nothing
  , "Throttle" : Nothing
  , "UsagePlanName" : Nothing
  }

-- | `AWS::ApiGateway::UsagePlan.QuotaSettings`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html-- |
-- | - `Limit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-limit
-- | - `Offset`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-offset
-- | - `Period`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-period
type QuotaSettings =
  { "Limit" :: Maybe Int
  , "Offset" :: Maybe Int
  , "Period" :: Maybe String
  }

quotaSettings :: QuotaSettings
quotaSettings =
  { "Limit" : Nothing
  , "Offset" : Nothing
  , "Period" : Nothing
  }

-- | `AWS::ApiGateway::UsagePlan.ThrottleSettings`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html-- |
-- | - `BurstLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html#cfn-apigateway-usageplan-throttlesettings-burstlimit
-- | - `RateLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html#cfn-apigateway-usageplan-throttlesettings-ratelimit
type ThrottleSettings =
  { "BurstLimit" :: Maybe Int
  , "RateLimit" :: Maybe Number
  }

throttleSettings :: ThrottleSettings
throttleSettings =
  { "BurstLimit" : Nothing
  , "RateLimit" : Nothing
  }

-- | `AWS::ApiGateway::UsagePlan.ApiStage`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html-- |
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-apiid
-- | - `Stage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-stage
-- | - `Throttle`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-throttle
type ApiStage =
  { "ApiId" :: Maybe String
  , "Stage" :: Maybe String
  , "Throttle" :: Maybe (Object ThrottleSettings)
  }

apiStage :: ApiStage
apiStage =
  { "ApiId" : Nothing
  , "Stage" : Nothing
  , "Throttle" : Nothing
  }