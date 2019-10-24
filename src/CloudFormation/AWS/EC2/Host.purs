module CloudFormation.AWS.EC2.Host where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::Host`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html
-- |
-- | - `AutoPlacement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-autoplacement
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-availabilityzone
-- | - `HostRecovery`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-hostrecovery
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-instancetype
type Host =
  { "AvailabilityZone" :: String
  , "InstanceType" :: String
  , "AutoPlacement" :: Maybe String
  , "HostRecovery" :: Maybe String
  }

host :: { "AvailabilityZone" :: String, "InstanceType" :: String } -> Host
host required =
  merge required
    { "AutoPlacement" : Nothing
    , "HostRecovery" : Nothing
    }