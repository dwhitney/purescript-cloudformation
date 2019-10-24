module AWS.CodeDeploy.DeploymentGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)


type DeploymentGroup =
  { "ApplicationName" :: String
  , "ServiceRoleArn" :: String
  , "AlarmConfiguration" :: Maybe AlarmConfiguration
  , "AutoRollbackConfiguration" :: Maybe AutoRollbackConfiguration
  , "AutoScalingGroups" :: Maybe (Array String)
  , "Deployment" :: Maybe Deployment
  , "DeploymentConfigName" :: Maybe String
  , "DeploymentGroupName" :: Maybe String
  , "DeploymentStyle" :: Maybe DeploymentStyle
  , "Ec2TagFilters" :: Maybe (Array EC2TagFilter)
  , "Ec2TagSet" :: Maybe EC2TagSet
  , "LoadBalancerInfo" :: Maybe LoadBalancerInfo
  , "OnPremisesInstanceTagFilters" :: Maybe (Array TagFilter)
  , "OnPremisesTagSet" :: Maybe OnPremisesTagSet
  , "TriggerConfigurations" :: Maybe (Array TriggerConfig)
  }

deploymentGroup :: { "ApplicationName" :: String, "ServiceRoleArn" :: String } -> DeploymentGroup
deploymentGroup required =
  merge required
    { "AlarmConfiguration" : Nothing
    , "AutoRollbackConfiguration" : Nothing
    , "AutoScalingGroups" : Nothing
    , "Deployment" : Nothing
    , "DeploymentConfigName" : Nothing
    , "DeploymentGroupName" : Nothing
    , "DeploymentStyle" : Nothing
    , "Ec2TagFilters" : Nothing
    , "Ec2TagSet" : Nothing
    , "LoadBalancerInfo" : Nothing
    , "OnPremisesInstanceTagFilters" : Nothing
    , "OnPremisesTagSet" : Nothing
    , "TriggerConfigurations" : Nothing
    }

type EC2TagSetListObject =
  { "Ec2TagGroup" :: Maybe (Array EC2TagFilter)
  }

ecC2TagSetListObject :: EC2TagSetListObject
ecC2TagSetListObject =
  { "Ec2TagGroup" : Nothing
  }

type AutoRollbackConfiguration =
  { "Enabled" :: Maybe Boolean
  , "Events" :: Maybe (Array String)
  }

autoRollbackConfiguration :: AutoRollbackConfiguration
autoRollbackConfiguration =
  { "Enabled" : Nothing
  , "Events" : Nothing
  }

type AlarmConfiguration =
  { "Alarms" :: Maybe (Array Alarm)
  , "Enabled" :: Maybe Boolean
  , "IgnorePollAlarmFailure" :: Maybe Boolean
  }

alarmConfiguration :: AlarmConfiguration
alarmConfiguration =
  { "Alarms" : Nothing
  , "Enabled" : Nothing
  , "IgnorePollAlarmFailure" : Nothing
  }

type EC2TagSet =
  { "Ec2TagSetList" :: Maybe (Array EC2TagSetListObject)
  }

ecC2TagSet :: EC2TagSet
ecC2TagSet =
  { "Ec2TagSetList" : Nothing
  }

type TriggerConfig =
  { "TriggerEvents" :: Maybe (Array String)
  , "TriggerName" :: Maybe String
  , "TriggerTargetArn" :: Maybe String
  }

triggerConfig :: TriggerConfig
triggerConfig =
  { "TriggerEvents" : Nothing
  , "TriggerName" : Nothing
  , "TriggerTargetArn" : Nothing
  }

type RevisionLocation =
  { "GitHubLocation" :: Maybe GitHubLocation
  , "RevisionType" :: Maybe String
  , "S3Location" :: Maybe S3Location
  }

revisionLocation :: RevisionLocation
revisionLocation =
  { "GitHubLocation" : Nothing
  , "RevisionType" : Nothing
  , "S3Location" : Nothing
  }

type LoadBalancerInfo =
  { "ElbInfoList" :: Maybe (Array ELBInfo)
  , "TargetGroupInfoList" :: Maybe (Array TargetGroupInfo)
  }

loadBalancerInfo :: LoadBalancerInfo
loadBalancerInfo =
  { "ElbInfoList" : Nothing
  , "TargetGroupInfoList" : Nothing
  }

type Deployment =
  { "Revision" :: RevisionLocation
  , "Description" :: Maybe String
  , "IgnoreApplicationStopFailures" :: Maybe Boolean
  }

deployment :: { "Revision" :: RevisionLocation } -> Deployment
deployment required =
  merge required
    { "Description" : Nothing
    , "IgnoreApplicationStopFailures" : Nothing
    }

type OnPremisesTagSet =
  { "OnPremisesTagSetList" :: Maybe (Array OnPremisesTagSetListObject)
  }

onPremisesTagSet :: OnPremisesTagSet
onPremisesTagSet =
  { "OnPremisesTagSetList" : Nothing
  }

type EC2TagFilter =
  { "Key" :: Maybe String
  , "Type" :: Maybe String
  , "Value" :: Maybe String
  }

ecC2TagFilter :: EC2TagFilter
ecC2TagFilter =
  { "Key" : Nothing
  , "Type" : Nothing
  , "Value" : Nothing
  }

type Alarm =
  { "Name" :: Maybe String
  }

alarm :: Alarm
alarm =
  { "Name" : Nothing
  }

type DeploymentStyle =
  { "DeploymentOption" :: Maybe String
  , "DeploymentType" :: Maybe String
  }

deploymentStyle :: DeploymentStyle
deploymentStyle =
  { "DeploymentOption" : Nothing
  , "DeploymentType" : Nothing
  }

type OnPremisesTagSetListObject =
  { "OnPremisesTagGroup" :: Maybe (Array TagFilter)
  }

onPremisesTagSetListObject :: OnPremisesTagSetListObject
onPremisesTagSetListObject =
  { "OnPremisesTagGroup" : Nothing
  }

type ELBInfo =
  { "Name" :: Maybe String
  }

elbiLBInfo :: ELBInfo
elbiLBInfo =
  { "Name" : Nothing
  }

type TargetGroupInfo =
  { "Name" :: Maybe String
  }

targetGroupInfo :: TargetGroupInfo
targetGroupInfo =
  { "Name" : Nothing
  }

type GitHubLocation =
  { "CommitId" :: String
  , "Repository" :: String
  }

gitHubLocation :: { "CommitId" :: String, "Repository" :: String } -> GitHubLocation
gitHubLocation required =
  required

type TagFilter =
  { "Key" :: Maybe String
  , "Type" :: Maybe String
  , "Value" :: Maybe String
  }

tagFilter :: TagFilter
tagFilter =
  { "Key" : Nothing
  , "Type" : Nothing
  , "Value" : Nothing
  }

type S3Location =
  { "Bucket" :: String
  , "Key" :: String
  , "BundleType" :: Maybe String
  , "ETag" :: Maybe String
  , "Version" :: Maybe String
  }

s3Location :: { "Bucket" :: String, "Key" :: String } -> S3Location
s3Location required =
  merge required
    { "BundleType" : Nothing
    , "ETag" : Nothing
    , "Version" : Nothing
    }