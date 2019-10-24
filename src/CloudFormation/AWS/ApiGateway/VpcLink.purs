module CloudFormation.AWS.ApiGateway.VpcLink where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ApiGateway::VpcLink`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-description
-- | - `TargetArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-targetarns
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-name
type VpcLink =
  { "TargetArns" :: Array String
  , "Name" :: String
  , "Description" :: Maybe String
  }

vpcLink :: { "TargetArns" :: Array String, "Name" :: String } -> VpcLink
vpcLink required =
  merge required
    { "Description" : Nothing
    }