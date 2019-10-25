module CloudFormation.AWS.GuardDuty.Detector where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::GuardDuty::Detector`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-detector.html
-- |
-- | - `FindingPublishingFrequency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-detector.html#cfn-guardduty-detector-findingpublishingfrequency
-- | - `Enable`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-detector.html#cfn-guardduty-detector-enable
newtype Detector = Detector
  { "Enable" :: Value Boolean
  , "FindingPublishingFrequency" :: Maybe (Value String)
  }

derive instance newtypeDetector :: Newtype Detector _
derive newtype instance writeDetector :: WriteForeign Detector
instance resourceDetector :: Resource Detector where type_ _ = "AWS::GuardDuty::Detector"

detector :: { "Enable" :: Value Boolean } -> Detector
detector required = Detector
  (merge required
    { "FindingPublishingFrequency" : Nothing
    })