module CloudFormation.AWS.ApiGateway.UsagePlan where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Foreign.Object (Object)


-- | `AWS::ApiGateway::UsagePlan`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html
-- |
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
newtype UsagePlan = UsagePlan
  { "ApiStages" :: Maybe (Value (Array ApiStage))
  , "Description" :: Maybe (Value String)
  , "Quota" :: Maybe (Value QuotaSettings)
  , "Throttle" :: Maybe (Value ThrottleSettings)
  , "UsagePlanName" :: Maybe (Value String)
  }

derive instance newtypeUsagePlan :: Newtype UsagePlan _
derive newtype instance writeUsagePlan :: WriteForeign UsagePlan
instance resourceUsagePlan :: Resource UsagePlan where type_ _ = "AWS::ApiGateway::UsagePlan"

usagePlan :: UsagePlan
usagePlan = UsagePlan
  { "ApiStages" : Nothing
  , "Description" : Nothing
  , "Quota" : Nothing
  , "Throttle" : Nothing
  , "UsagePlanName" : Nothing
  }

-- | `AWS::ApiGateway::UsagePlan.QuotaSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html
-- |
-- | - `Limit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-limit
-- | - `Offset`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-offset
-- | - `Period`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-period
type QuotaSettings =
  { "Limit" :: Maybe (Value Int)
  , "Offset" :: Maybe (Value Int)
  , "Period" :: Maybe (Value String)
  }

quotaSettings :: QuotaSettings
quotaSettings =
  { "Limit" : Nothing
  , "Offset" : Nothing
  , "Period" : Nothing
  }

-- | `AWS::ApiGateway::UsagePlan.ThrottleSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html
-- |
-- | - `BurstLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html#cfn-apigateway-usageplan-throttlesettings-burstlimit
-- | - `RateLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html#cfn-apigateway-usageplan-throttlesettings-ratelimit
type ThrottleSettings =
  { "BurstLimit" :: Maybe (Value Int)
  , "RateLimit" :: Maybe (Value Number)
  }

throttleSettings :: ThrottleSettings
throttleSettings =
  { "BurstLimit" : Nothing
  , "RateLimit" : Nothing
  }

-- | `AWS::ApiGateway::UsagePlan.ApiStage`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html
-- |
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-apiid
-- | - `Stage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-stage
-- | - `Throttle`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-throttle
type ApiStage =
  { "ApiId" :: Maybe (Value String)
  , "Stage" :: Maybe (Value String)
  , "Throttle" :: Maybe (Value (Object ThrottleSettings))
  }

apiStage :: ApiStage
apiStage =
  { "ApiId" : Nothing
  , "Stage" : Nothing
  , "Throttle" : Nothing
  }