module CloudFormation.AWS.EC2.TrafficMirrorFilter where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Description" :: Maybe (Value String)
  , "NetworkServices" :: Maybe (Value (Array String))
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeTrafficMirrorFilter :: Newtype TrafficMirrorFilter _
derive newtype instance writeTrafficMirrorFilter :: WriteForeign TrafficMirrorFilter
instance resourceTrafficMirrorFilter :: Resource TrafficMirrorFilter where type_ _ = "AWS::EC2::TrafficMirrorFilter"

trafficMirrorFilter :: TrafficMirrorFilter
trafficMirrorFilter = TrafficMirrorFilter
  { "Description" : Nothing
  , "NetworkServices" : Nothing
  , "Tags" : Nothing
  }