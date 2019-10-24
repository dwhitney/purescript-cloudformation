module CloudFormation.AWS.GuardDuty.Master where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::GuardDuty::Master`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html-- |
-- | - `DetectorId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html#cfn-guardduty-master-detectorid
-- | - `MasterId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html#cfn-guardduty-master-masterid
-- | - `InvitationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html#cfn-guardduty-master-invitationid
type Master =
  { "DetectorId" :: String
  , "MasterId" :: String
  , "InvitationId" :: Maybe String
  }

master :: { "DetectorId" :: String, "MasterId" :: String } -> Master
master required =
  merge required
    { "InvitationId" : Nothing
    }