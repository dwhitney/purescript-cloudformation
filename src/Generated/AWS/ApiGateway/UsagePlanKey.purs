module CloudFormation.AWS.ApiGateway.UsagePlanKey where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGateway::UsagePlanKey`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html
-- |
-- | - `KeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html#cfn-apigateway-usageplankey-keyid
-- | - `KeyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html#cfn-apigateway-usageplankey-keytype
-- | - `UsagePlanId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html#cfn-apigateway-usageplankey-usageplanid
newtype UsagePlanKey = UsagePlanKey
  { "KeyId" :: String
  , "KeyType" :: String
  , "UsagePlanId" :: String
  }

derive instance newtypeUsagePlanKey :: Newtype UsagePlanKey _
instance resourceUsagePlanKey :: Resource UsagePlanKey where type_ _ = "AWS::ApiGateway::UsagePlanKey"

usagePlanKey :: { "KeyId" :: String, "KeyType" :: String, "UsagePlanId" :: String } -> UsagePlanKey
usagePlanKey required = UsagePlanKey
  required