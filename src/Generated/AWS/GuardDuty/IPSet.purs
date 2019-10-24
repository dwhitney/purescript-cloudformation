module CloudFormation.AWS.GuardDuty.IPSet where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "Format" :: String
  , "Activate" :: Boolean
  , "DetectorId" :: String
  , "Location" :: String
  , "Name" :: Maybe String
  }

derive instance newtypeIPSet :: Newtype IPSet _
instance resourceIPSet :: Resource IPSet where type_ _ = "AWS::GuardDuty::IPSet"

ipsPSet :: { "Format" :: String, "Activate" :: Boolean, "DetectorId" :: String, "Location" :: String } -> IPSet
ipsPSet required = IPSet
  (merge required
    { "Name" : Nothing
    })