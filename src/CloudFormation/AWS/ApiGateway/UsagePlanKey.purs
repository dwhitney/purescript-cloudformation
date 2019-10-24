module CloudFormation.AWS.ApiGateway.UsagePlanKey where 




-- | `AWS::ApiGateway::UsagePlanKey`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html-- |
-- | - `KeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html#cfn-apigateway-usageplankey-keyid
-- | - `KeyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html#cfn-apigateway-usageplankey-keytype
-- | - `UsagePlanId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplankey.html#cfn-apigateway-usageplankey-usageplanid
type UsagePlanKey =
  { "KeyId" :: String
  , "KeyType" :: String
  , "UsagePlanId" :: String
  }

usagePlanKey :: { "KeyId" :: String, "KeyType" :: String, "UsagePlanId" :: String } -> UsagePlanKey
usagePlanKey required =
  required