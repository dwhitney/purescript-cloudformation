module CloudFormation.AWS.CloudFormation.CustomResource where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CloudFormation::CustomResource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html
-- |
-- | - `ServiceToken`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html#cfn-customresource-servicetoken
newtype CustomResource = CustomResource
  { "ServiceToken" :: Value String
  }

derive instance newtypeCustomResource :: Newtype CustomResource _
derive newtype instance writeCustomResource :: WriteForeign CustomResource
instance resourceCustomResource :: Resource CustomResource where type_ _ = "AWS::CloudFormation::CustomResource"

customResource :: { "ServiceToken" :: Value String } -> CustomResource
customResource required = CustomResource
  required