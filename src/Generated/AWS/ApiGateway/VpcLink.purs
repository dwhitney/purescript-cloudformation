module CloudFormation.AWS.ApiGateway.VpcLink where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGateway::VpcLink`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-description
-- | - `TargetArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-targetarns
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-name
newtype VpcLink = VpcLink
  { "TargetArns" :: Value (Array String)
  , "Name" :: Value String
  , "Description" :: Maybe (Value String)
  }

derive instance newtypeVpcLink :: Newtype VpcLink _
derive newtype instance writeVpcLink :: WriteForeign VpcLink
instance resourceVpcLink :: Resource VpcLink where type_ _ = "AWS::ApiGateway::VpcLink"

vpcLink :: { "TargetArns" :: Value (Array String), "Name" :: Value String } -> VpcLink
vpcLink required = VpcLink
  (merge required
    { "Description" : Nothing
    })