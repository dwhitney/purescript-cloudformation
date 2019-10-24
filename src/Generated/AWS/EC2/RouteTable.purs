module CloudFormation.AWS.EC2.RouteTable where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::RouteTable`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html#cfn-ec2-routetable-tags
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html#cfn-ec2-routetable-vpcid
newtype RouteTable = RouteTable
  { "VpcId" :: String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeRouteTable :: Newtype RouteTable _
instance resourceRouteTable :: Resource RouteTable where type_ _ = "AWS::EC2::RouteTable"

routeTable :: { "VpcId" :: String } -> RouteTable
routeTable required = RouteTable
  (merge required
    { "Tags" : Nothing
    })