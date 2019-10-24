module CloudFormation.AWS.GuardDuty.Master where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "DetectorId" :: String
  , "MasterId" :: String
  , "InvitationId" :: Maybe String
  }

derive instance newtypeMaster :: Newtype Master _
instance resourceMaster :: Resource Master where type_ _ = "AWS::GuardDuty::Master"

master :: { "DetectorId" :: String, "MasterId" :: String } -> Master
master required = Master
  (merge required
    { "InvitationId" : Nothing
    })