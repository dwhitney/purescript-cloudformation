module CloudFormation.AWS.EC2.CapacityReservation where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation.Tag (Tag)


-- | `AWS::EC2::CapacityReservation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html
-- |
-- | - `Tenancy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-tenancy
-- | - `EndDateType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-enddatetype
-- | - `InstanceCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-instancecount
-- | - `TagSpecifications`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-tagspecifications
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-availabilityzone
-- | - `InstancePlatform`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-instanceplatform
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-instancetype
-- | - `EphemeralStorage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-ephemeralstorage
-- | - `InstanceMatchCriteria`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-instancematchcriteria
-- | - `EndDate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-enddate
-- | - `EbsOptimized`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacityreservation.html#cfn-ec2-capacityreservation-ebsoptimized
newtype CapacityReservation = CapacityReservation
  { "InstanceCount" :: Value Int
  , "AvailabilityZone" :: Value String
  , "InstancePlatform" :: Value String
  , "InstanceType" :: Value String
  , "Tenancy" :: Maybe (Value String)
  , "EndDateType" :: Maybe (Value String)
  , "TagSpecifications" :: Maybe (Value (Array TagSpecification))
  , "EphemeralStorage" :: Maybe (Value Boolean)
  , "InstanceMatchCriteria" :: Maybe (Value String)
  , "EndDate" :: Maybe (Value String)
  , "EbsOptimized" :: Maybe (Value Boolean)
  }

derive instance newtypeCapacityReservation :: Newtype CapacityReservation _
derive newtype instance writeCapacityReservation :: WriteForeign CapacityReservation
instance resourceCapacityReservation :: Resource CapacityReservation where type_ _ = "AWS::EC2::CapacityReservation"

capacityReservation :: { "InstanceCount" :: Value Int, "AvailabilityZone" :: Value String, "InstancePlatform" :: Value String, "InstanceType" :: Value String } -> CapacityReservation
capacityReservation required = CapacityReservation
  (merge required
    { "Tenancy" : Nothing
    , "EndDateType" : Nothing
    , "TagSpecifications" : Nothing
    , "EphemeralStorage" : Nothing
    , "InstanceMatchCriteria" : Nothing
    , "EndDate" : Nothing
    , "EbsOptimized" : Nothing
    })

-- | `AWS::EC2::CapacityReservation.TagSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html
-- |
-- | - `ResourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html#cfn-ec2-capacityreservation-tagspecification-resourcetype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html#cfn-ec2-capacityreservation-tagspecification-tags
type TagSpecification =
  { "ResourceType" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

tagSpecification :: TagSpecification
tagSpecification =
  { "ResourceType" : Nothing
  , "Tags" : Nothing
  }