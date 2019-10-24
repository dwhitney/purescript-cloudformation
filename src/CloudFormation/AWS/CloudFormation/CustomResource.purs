module CloudFormation.AWS.CloudFormation.CustomResource where 




-- | `AWS::CloudFormation::CustomResource`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html-- |
-- | - `ServiceToken`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html#cfn-customresource-servicetoken
type CustomResource =
  { "ServiceToken" :: String
  }

customResource :: { "ServiceToken" :: String } -> CustomResource
customResource required =
  required