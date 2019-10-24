module CloudFormation.AWS.GuardDuty.Member where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::GuardDuty::Member`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html
-- |
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html#cfn-guardduty-member-status
-- | - `MemberId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html#cfn-guardduty-member-memberid
-- | - `Email`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html#cfn-guardduty-member-email
-- | - `Message`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html#cfn-guardduty-member-message
-- | - `DisableEmailNotification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html#cfn-guardduty-member-disableemailnotification
-- | - `DetectorId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html#cfn-guardduty-member-detectorid
type Member =
  { "MemberId" :: String
  , "Email" :: String
  , "DetectorId" :: String
  , "Status" :: Maybe String
  , "Message" :: Maybe String
  , "DisableEmailNotification" :: Maybe Boolean
  }

member :: { "MemberId" :: String, "Email" :: String, "DetectorId" :: String } -> Member
member required =
  merge required
    { "Status" : Nothing
    , "Message" : Nothing
    , "DisableEmailNotification" : Nothing
    }