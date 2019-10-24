module CloudFormation.AWS.OpsWorks.Volume where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Volume =
  { "Ec2VolumeId" :: String
  , "StackId" :: String
  , "MountPoint" :: Maybe String
  , "Name" :: Maybe String
  }

volume :: { "Ec2VolumeId" :: String, "StackId" :: String } -> Volume
volume required =
  merge required
    { "MountPoint" : Nothing
    , "Name" : Nothing
    }