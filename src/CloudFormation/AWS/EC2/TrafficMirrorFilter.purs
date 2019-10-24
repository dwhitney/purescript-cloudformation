module CloudFormation.AWS.EC2.TrafficMirrorFilter where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


-- | `AWS::EC2::TrafficMirrorFilter`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html#cfn-ec2-trafficmirrorfilter-description
-- | - `NetworkServices`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html#cfn-ec2-trafficmirrorfilter-networkservices
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilter.html#cfn-ec2-trafficmirrorfilter-tags
type TrafficMirrorFilter =
  { "Description" :: Maybe String
  , "NetworkServices" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  }

trafficMirrorFilter :: TrafficMirrorFilter
trafficMirrorFilter =
  { "Description" : Nothing
  , "NetworkServices" : Nothing
  , "Tags" : Nothing
  }