module CloudFormation.AWS.ApiGateway.UsagePlanKey where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "KeyId" :: Value String
  , "KeyType" :: Value String
  , "UsagePlanId" :: Value String
  }

derive instance newtypeUsagePlanKey :: Newtype UsagePlanKey _
derive newtype instance writeUsagePlanKey :: WriteForeign UsagePlanKey
instance resourceUsagePlanKey :: Resource UsagePlanKey where type_ _ = "AWS::ApiGateway::UsagePlanKey"

usagePlanKey :: { "KeyId" :: Value String, "KeyType" :: Value String, "UsagePlanId" :: Value String } -> UsagePlanKey
usagePlanKey required = UsagePlanKey
  required