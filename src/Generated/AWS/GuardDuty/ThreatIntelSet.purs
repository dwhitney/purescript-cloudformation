module CloudFormation.AWS.GuardDuty.ThreatIntelSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Format" :: Value String
  , "Activate" :: Value Boolean
  , "DetectorId" :: Value String
  , "Location" :: Value String
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeThreatIntelSet :: Newtype ThreatIntelSet _
derive newtype instance writeThreatIntelSet :: WriteForeign ThreatIntelSet
instance resourceThreatIntelSet :: Resource ThreatIntelSet where type_ _ = "AWS::GuardDuty::ThreatIntelSet"

threatIntelSet :: { "Format" :: Value String, "Activate" :: Value Boolean, "DetectorId" :: Value String, "Location" :: Value String } -> ThreatIntelSet
threatIntelSet required = ThreatIntelSet
  (merge required
    { "Name" : Nothing
    })