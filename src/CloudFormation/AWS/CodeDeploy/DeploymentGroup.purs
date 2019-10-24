module CloudFormation.AWS.CodeDeploy.DeploymentGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::CodeDeploy::DeploymentGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html
-- |
-- | - `AlarmConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-alarmconfiguration
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-applicationname
-- | - `AutoRollbackConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-autorollbackconfiguration
-- | - `AutoScalingGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-autoscalinggroups
-- | - `Deployment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deployment
-- | - `DeploymentConfigName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deploymentconfigname
-- | - `DeploymentGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deploymentgroupname
-- | - `DeploymentStyle`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deploymentstyle
-- | - `Ec2TagFilters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-ec2tagfilters
-- | - `Ec2TagSet`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-ec2tagset
-- | - `LoadBalancerInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo
-- | - `OnPremisesInstanceTagFilters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-onpremisesinstancetagfilters
-- | - `OnPremisesTagSet`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-onpremisestagset
-- | - `ServiceRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-servicerolearn
-- | - `TriggerConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-triggerconfigurations
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

-- | `AWS::CodeDeploy::DeploymentGroup.EC2TagSetListObject`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagsetlistobject.html
-- |
-- | - `Ec2TagGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagsetlistobject.html#cfn-codedeploy-deploymentgroup-ec2tagsetlistobject-ec2taggroup
type EC2TagSetListObject =
  { "Ec2TagGroup" :: Maybe (Array EC2TagFilter)
  }

ecC2TagSetListObject :: EC2TagSetListObject
ecC2TagSetListObject =
  { "Ec2TagGroup" : Nothing
  }

-- | `AWS::CodeDeploy::DeploymentGroup.AutoRollbackConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html#cfn-codedeploy-deploymentgroup-autorollbackconfiguration-enabled
-- | - `Events`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html#cfn-codedeploy-deploymentgroup-autorollbackconfiguration-events
type AutoRollbackConfiguration =
  { "Enabled" :: Maybe Boolean
  , "Events" :: Maybe (Array String)
  }

autoRollbackConfiguration :: AutoRollbackConfiguration
autoRollbackConfiguration =
  { "Enabled" : Nothing
  , "Events" : Nothing
  }

-- | `AWS::CodeDeploy::DeploymentGroup.AlarmConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html
-- |
-- | - `Alarms`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html#cfn-codedeploy-deploymentgroup-alarmconfiguration-alarms
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html#cfn-codedeploy-deploymentgroup-alarmconfiguration-enabled
-- | - `IgnorePollAlarmFailure`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarmconfiguration.html#cfn-codedeploy-deploymentgroup-alarmconfiguration-ignorepollalarmfailure
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

-- | `AWS::CodeDeploy::DeploymentGroup.EC2TagSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagset.html
-- |
-- | - `Ec2TagSetList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagset.html#cfn-codedeploy-deploymentgroup-ec2tagset-ec2tagsetlist
type EC2TagSet =
  { "Ec2TagSetList" :: Maybe (Array EC2TagSetListObject)
  }

ecC2TagSet :: EC2TagSet
ecC2TagSet =
  { "Ec2TagSetList" : Nothing
  }

-- | `AWS::CodeDeploy::DeploymentGroup.TriggerConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-triggerconfig.html
-- |
-- | - `TriggerEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-triggerconfig.html#cfn-codedeploy-deploymentgroup-triggerconfig-triggerevents
-- | - `TriggerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-triggerconfig.html#cfn-codedeploy-deploymentgroup-triggerconfig-triggername
-- | - `TriggerTargetArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-triggerconfig.html#cfn-codedeploy-deploymentgroup-triggerconfig-triggertargetarn
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

-- | `AWS::CodeDeploy::DeploymentGroup.RevisionLocation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html
-- |
-- | - `GitHubLocation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-githublocation
-- | - `RevisionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-revisiontype
-- | - `S3Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location
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

-- | `AWS::CodeDeploy::DeploymentGroup.LoadBalancerInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html
-- |
-- | - `ElbInfoList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo-elbinfolist
-- | - `TargetGroupInfoList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo-targetgroupinfolist
type LoadBalancerInfo =
  { "ElbInfoList" :: Maybe (Array ELBInfo)
  , "TargetGroupInfoList" :: Maybe (Array TargetGroupInfo)
  }

loadBalancerInfo :: LoadBalancerInfo
loadBalancerInfo =
  { "ElbInfoList" : Nothing
  , "TargetGroupInfoList" : Nothing
  }

-- | `AWS::CodeDeploy::DeploymentGroup.Deployment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-description
-- | - `IgnoreApplicationStopFailures`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-ignoreapplicationstopfailures
-- | - `Revision`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision
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

-- | `AWS::CodeDeploy::DeploymentGroup.OnPremisesTagSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagset.html
-- |
-- | - `OnPremisesTagSetList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagset.html#cfn-codedeploy-deploymentgroup-onpremisestagset-onpremisestagsetlist
type OnPremisesTagSet =
  { "OnPremisesTagSetList" :: Maybe (Array OnPremisesTagSetListObject)
  }

onPremisesTagSet :: OnPremisesTagSet
onPremisesTagSet =
  { "OnPremisesTagSetList" : Nothing
  }

-- | `AWS::CodeDeploy::DeploymentGroup.EC2TagFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilter.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilter.html#cfn-codedeploy-deploymentgroup-ec2tagfilter-key
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilter.html#cfn-codedeploy-deploymentgroup-ec2tagfilter-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagfilter.html#cfn-codedeploy-deploymentgroup-ec2tagfilter-value
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

-- | `AWS::CodeDeploy::DeploymentGroup.Alarm`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarm.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-alarm.html#cfn-codedeploy-deploymentgroup-alarm-name
type Alarm =
  { "Name" :: Maybe String
  }

alarm :: Alarm
alarm =
  { "Name" : Nothing
  }

-- | `AWS::CodeDeploy::DeploymentGroup.DeploymentStyle`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deploymentstyle.html
-- |
-- | - `DeploymentOption`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deploymentstyle.html#cfn-codedeploy-deploymentgroup-deploymentstyle-deploymentoption
-- | - `DeploymentType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deploymentstyle.html#cfn-codedeploy-deploymentgroup-deploymentstyle-deploymenttype
type DeploymentStyle =
  { "DeploymentOption" :: Maybe String
  , "DeploymentType" :: Maybe String
  }

deploymentStyle :: DeploymentStyle
deploymentStyle =
  { "DeploymentOption" : Nothing
  , "DeploymentType" : Nothing
  }

-- | `AWS::CodeDeploy::DeploymentGroup.OnPremisesTagSetListObject`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagsetlistobject.html
-- |
-- | - `OnPremisesTagGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagsetlistobject.html#cfn-codedeploy-deploymentgroup-onpremisestagsetlistobject-onpremisestaggroup
type OnPremisesTagSetListObject =
  { "OnPremisesTagGroup" :: Maybe (Array TagFilter)
  }

onPremisesTagSetListObject :: OnPremisesTagSetListObject
onPremisesTagSetListObject =
  { "OnPremisesTagGroup" : Nothing
  }

-- | `AWS::CodeDeploy::DeploymentGroup.ELBInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-elbinfo.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-elbinfo.html#cfn-codedeploy-deploymentgroup-elbinfo-name
type ELBInfo =
  { "Name" :: Maybe String
  }

elbiLBInfo :: ELBInfo
elbiLBInfo =
  { "Name" : Nothing
  }

-- | `AWS::CodeDeploy::DeploymentGroup.TargetGroupInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-targetgroupinfo.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-targetgroupinfo.html#cfn-codedeploy-deploymentgroup-targetgroupinfo-name
type TargetGroupInfo =
  { "Name" :: Maybe String
  }

targetGroupInfo :: TargetGroupInfo
targetGroupInfo =
  { "Name" : Nothing
  }

-- | `AWS::CodeDeploy::DeploymentGroup.GitHubLocation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-githublocation.html
-- |
-- | - `CommitId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-githublocation.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-githublocation-commitid
-- | - `Repository`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-githublocation.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-githublocation-repository
type GitHubLocation =
  { "CommitId" :: String
  , "Repository" :: String
  }

gitHubLocation :: { "CommitId" :: String, "Repository" :: String } -> GitHubLocation
gitHubLocation required =
  required

-- | `AWS::CodeDeploy::DeploymentGroup.TagFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html#cfn-codedeploy-deploymentgroup-tagfilter-key
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html#cfn-codedeploy-deploymentgroup-tagfilter-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-tagfilter.html#cfn-codedeploy-deploymentgroup-tagfilter-value
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

-- | `AWS::CodeDeploy::DeploymentGroup.S3Location`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-s3location.html
-- |
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-s3location.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location-bucket
-- | - `BundleType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-s3location.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location-bundletype
-- | - `ETag`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-s3location.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location-etag
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-s3location.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location-key
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-s3location.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location-value
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