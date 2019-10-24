module CloudFormation.AWS.GuardDuty.Detector where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::GuardDuty::Detector`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-detector.html
-- |
-- | - `FindingPublishingFrequency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-detector.html#cfn-guardduty-detector-findingpublishingfrequency
-- | - `Enable`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-detector.html#cfn-guardduty-detector-enable
newtype Detector = Detector
  { "Enable" :: Boolean
  , "FindingPublishingFrequency" :: Maybe String
  }

derive instance newtypeDetector :: Newtype Detector _
instance resourceDetector :: Resource Detector where type_ _ = "AWS::GuardDuty::Detector"

detector :: { "Enable" :: Boolean } -> Detector
detector required = Detector
  (merge required
    { "FindingPublishingFrequency" : Nothing
    })