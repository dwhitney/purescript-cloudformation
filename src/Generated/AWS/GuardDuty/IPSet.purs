module CloudFormation.AWS.GuardDuty.IPSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


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
type IPSet =
  { "Format" :: String
  , "Activate" :: Boolean
  , "DetectorId" :: String
  , "Location" :: String
  , "Name" :: Maybe String
  }

ipsPSet :: { "Format" :: String, "Activate" :: Boolean, "DetectorId" :: String, "Location" :: String } -> IPSet
ipsPSet required =
  merge required
    { "Name" : Nothing
    }