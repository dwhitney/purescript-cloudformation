module CloudFormation.AWS.GuardDuty.ThreatIntelSet where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::GuardDuty::ThreatIntelSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html
-- |
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
newtype ThreatIntelSet = ThreatIntelSet
  { "Format" :: String
  , "Activate" :: Boolean
  , "DetectorId" :: String
  , "Location" :: String
  , "Name" :: Maybe String
  }

derive instance newtypeThreatIntelSet :: Newtype ThreatIntelSet _
instance resourceThreatIntelSet :: Resource ThreatIntelSet where type_ _ = "AWS::GuardDuty::ThreatIntelSet"

threatIntelSet :: { "Format" :: String, "Activate" :: Boolean, "DetectorId" :: String, "Location" :: String } -> ThreatIntelSet
threatIntelSet required = ThreatIntelSet
  (merge required
    { "Name" : Nothing
    })