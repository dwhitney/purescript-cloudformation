module CloudFormation.AWS.GuardDuty.ThreatIntelSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::GuardDuty::ThreatIntelSet`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html-- |
-- | - `Format`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-format
-- | - `Activate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-activate
-- | - `DetectorId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-detectorid
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-name
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-location
type ThreatIntelSet =
  { "Format" :: String
  , "Activate" :: Boolean
  , "DetectorId" :: String
  , "Location" :: String
  , "Name" :: Maybe String
  }

threatIntelSet :: { "Format" :: String, "Activate" :: Boolean, "DetectorId" :: String, "Location" :: String } -> ThreatIntelSet
threatIntelSet required =
  merge required
    { "Name" : Nothing
    }