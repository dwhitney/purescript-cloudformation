module CloudFormation.AWS.EC2.Host where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype Host = Host
  { "AvailabilityZone" :: String
  , "InstanceType" :: String
  , "AutoPlacement" :: Maybe String
  , "HostRecovery" :: Maybe String
  }

derive instance newtypeHost :: Newtype Host _
instance resourceHost :: Resource Host where type_ _ = "AWS::EC2::Host"

host :: { "AvailabilityZone" :: String, "InstanceType" :: String } -> Host
host required = Host
  (merge required
    { "AutoPlacement" : Nothing
    , "HostRecovery" : Nothing
    })