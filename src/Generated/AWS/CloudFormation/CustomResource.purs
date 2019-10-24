module CloudFormation.AWS.CloudFormation.CustomResource where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::CloudFormation::CustomResource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html
-- |
-- | - `ServiceToken`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html#cfn-customresource-servicetoken
newtype CustomResource = CustomResource
  { "ServiceToken" :: String
  }

derive instance newtypeCustomResource :: Newtype CustomResource _
instance resourceCustomResource :: Resource CustomResource where type_ _ = "AWS::CloudFormation::CustomResource"

customResource :: { "ServiceToken" :: String } -> CustomResource
customResource required = CustomResource
  required