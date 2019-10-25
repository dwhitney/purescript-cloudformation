module CloudFormation.AWS.EC2.Host where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "AvailabilityZone" :: Value String
  , "InstanceType" :: Value String
  , "AutoPlacement" :: Maybe (Value String)
  , "HostRecovery" :: Maybe (Value String)
  }

derive instance newtypeHost :: Newtype Host _
derive newtype instance writeHost :: WriteForeign Host
instance resourceHost :: Resource Host where type_ _ = "AWS::EC2::Host"

host :: { "AvailabilityZone" :: Value String, "InstanceType" :: Value String } -> Host
host required = Host
  (merge required
    { "AutoPlacement" : Nothing
    , "HostRecovery" : Nothing
    })