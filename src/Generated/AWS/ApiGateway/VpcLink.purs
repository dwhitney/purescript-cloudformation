module CloudFormation.AWS.ApiGateway.VpcLink where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "TargetArns" :: Array String
  , "Name" :: String
  , "Description" :: Maybe String
  }

derive instance newtypeVpcLink :: Newtype VpcLink _
instance resourceVpcLink :: Resource VpcLink where type_ _ = "AWS::ApiGateway::VpcLink"

vpcLink :: { "TargetArns" :: Array String, "Name" :: String } -> VpcLink
vpcLink required = VpcLink
  (merge required
    { "Description" : Nothing
    })