module CloudFormation.AWS.GuardDuty.Member where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "MemberId" :: Value String
  , "Email" :: Value String
  , "DetectorId" :: Value String
  , "Status" :: Maybe (Value String)
  , "Message" :: Maybe (Value String)
  , "DisableEmailNotification" :: Maybe (Value Boolean)
  }

derive instance newtypeMember :: Newtype Member _
derive newtype instance writeMember :: WriteForeign Member
instance resourceMember :: Resource Member where type_ _ = "AWS::GuardDuty::Member"

member :: { "MemberId" :: Value String, "Email" :: Value String, "DetectorId" :: Value String } -> Member
member required = Member
  (merge required
    { "Status" : Nothing
    , "Message" : Nothing
    , "DisableEmailNotification" : Nothing
    })