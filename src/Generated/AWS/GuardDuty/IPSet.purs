module CloudFormation.AWS.GuardDuty.IPSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::GuardDuty::IPSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html
-- |
-- | - `Format`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-format
-- | - `Activate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-activate
-- | - `DetectorId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-detectorid
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-name
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-location
newtype IPSet = IPSet
  { "Format" :: Value String
  , "Activate" :: Value Boolean
  , "DetectorId" :: Value String
  , "Location" :: Value String
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeIPSet :: Newtype IPSet _
derive newtype instance writeIPSet :: WriteForeign IPSet
instance resourceIPSet :: Resource IPSet where type_ _ = "AWS::GuardDuty::IPSet"

ipsPSet :: { "Format" :: Value String, "Activate" :: Value Boolean, "DetectorId" :: Value String, "Location" :: Value String } -> IPSet
ipsPSet required = IPSet
  (merge required
    { "Name" : Nothing
    })