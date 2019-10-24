module CloudFormation.AWS.EC2.RouteTable where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::RouteTable`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html#cfn-ec2-routetable-tags
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html#cfn-ec2-routetable-vpcid
type RouteTable =
  { "VpcId" :: String
  , "Tags" :: Maybe (Array Tag)
  }

routeTable :: { "VpcId" :: String } -> RouteTable
routeTable required =
  merge required
    { "Tags" : Nothing
    }