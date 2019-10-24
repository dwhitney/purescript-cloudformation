module CloudFormation.AWS.GuardDuty.Member where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype Member = Member
  { "MemberId" :: String
  , "Email" :: String
  , "DetectorId" :: String
  , "Status" :: Maybe String
  , "Message" :: Maybe String
  , "DisableEmailNotification" :: Maybe Boolean
  }

derive instance newtypeMember :: Newtype Member _
instance resourceMember :: Resource Member where type_ _ = "AWS::GuardDuty::Member"

member :: { "MemberId" :: String, "Email" :: String, "DetectorId" :: String } -> Member
member required = Member
  (merge required
    { "Status" : Nothing
    , "Message" : Nothing
    , "DisableEmailNotification" : Nothing
    })