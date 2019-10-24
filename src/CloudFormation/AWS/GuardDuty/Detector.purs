module CloudFormation.AWS.GuardDuty.Detector where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::GuardDuty::Detector`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-detector.html-- |
-- | - `FindingPublishingFrequency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-detector.html#cfn-guardduty-detector-findingpublishingfrequency
-- | - `Enable`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-detector.html#cfn-guardduty-detector-enable
type Detector =
  { "Enable" :: Boolean
  , "FindingPublishingFrequency" :: Maybe String
  }

detector :: { "Enable" :: Boolean } -> Detector
detector required =
  merge required
    { "FindingPublishingFrequency" : Nothing
    }