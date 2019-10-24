module CloudFormation.AWS.EC2.TrafficMirrorFilter where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::TrafficMirrorFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html#cfn-ec2-trafficmirrorfilter-description
-- | - `NetworkServices`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html#cfn-ec2-trafficmirrorfilter-networkservices
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html#cfn-ec2-trafficmirrorfilter-tags
newtype TrafficMirrorFilter = TrafficMirrorFilter
  { "Description" :: Maybe String
  , "NetworkServices" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeTrafficMirrorFilter :: Newtype TrafficMirrorFilter _
instance resourceTrafficMirrorFilter :: Resource TrafficMirrorFilter where type_ _ = "AWS::EC2::TrafficMirrorFilter"

trafficMirrorFilter :: TrafficMirrorFilter
trafficMirrorFilter = TrafficMirrorFilter
  { "Description" : Nothing
  , "NetworkServices" : Nothing
  , "Tags" : Nothing
  }