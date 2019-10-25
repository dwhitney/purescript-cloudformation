module CloudFormation.AWS.EC2.RouteTable where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::RouteTable`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html#cfn-ec2-routetable-tags
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html#cfn-ec2-routetable-vpcid
newtype RouteTable = RouteTable
  { "VpcId" :: Value String
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeRouteTable :: Newtype RouteTable _
derive newtype instance writeRouteTable :: WriteForeign RouteTable
instance resourceRouteTable :: Resource RouteTable where type_ _ = "AWS::EC2::RouteTable"

routeTable :: { "VpcId" :: Value String } -> RouteTable
routeTable required = RouteTable
  (merge required
    { "Tags" : Nothing
    })