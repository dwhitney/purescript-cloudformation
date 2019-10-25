module CloudFormation.AWS.GuardDuty.Master where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::GuardDuty::Master`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html
-- |
-- | - `DetectorId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html#cfn-guardduty-master-detectorid
-- | - `MasterId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html#cfn-guardduty-master-masterid
-- | - `InvitationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html#cfn-guardduty-master-invitationid
newtype Master = Master
  { "DetectorId" :: Value String
  , "MasterId" :: Value String
  , "InvitationId" :: Maybe (Value String)
  }

derive instance newtypeMaster :: Newtype Master _
derive newtype instance writeMaster :: WriteForeign Master
instance resourceMaster :: Resource Master where type_ _ = "AWS::GuardDuty::Master"

master :: { "DetectorId" :: Value String, "MasterId" :: Value String } -> Master
master required = Master
  (merge required
    { "InvitationId" : Nothing
    })