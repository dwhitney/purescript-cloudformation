module CloudFormation.AWS.SageMaker.Workteam where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SageMaker::Workteam`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-workteam.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-workteam.html#cfn-sagemaker-workteam-description
-- | - `NotificationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-workteam.html#cfn-sagemaker-workteam-notificationconfiguration
-- | - `WorkteamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-workteam.html#cfn-sagemaker-workteam-workteamname
-- | - `MemberDefinitions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-workteam.html#cfn-sagemaker-workteam-memberdefinitions
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-workteam.html#cfn-sagemaker-workteam-tags
newtype Workteam = Workteam
  { "Description" :: Maybe String
  , "NotificationConfiguration" :: Maybe NotificationConfiguration
  , "WorkteamName" :: Maybe String
  , "MemberDefinitions" :: Maybe (Array MemberDefinition)
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeWorkteam :: Newtype Workteam _
instance resourceWorkteam :: Resource Workteam where type_ _ = "AWS::SageMaker::Workteam"

workteam :: Workteam
workteam = Workteam
  { "Description" : Nothing
  , "NotificationConfiguration" : Nothing
  , "WorkteamName" : Nothing
  , "MemberDefinitions" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::SageMaker::Workteam.NotificationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-notificationconfiguration.html
-- |
-- | - `NotificationTopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-notificationconfiguration.html#cfn-sagemaker-workteam-notificationconfiguration-notificationtopicarn
type NotificationConfiguration =
  { "NotificationTopicArn" :: String
  }

notificationConfiguration :: { "NotificationTopicArn" :: String } -> NotificationConfiguration
notificationConfiguration required =
  required

-- | `AWS::SageMaker::Workteam.MemberDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-memberdefinition.html
-- |
-- | - `CognitoMemberDefinition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-memberdefinition.html#cfn-sagemaker-workteam-memberdefinition-cognitomemberdefinition
type MemberDefinition =
  { "CognitoMemberDefinition" :: CognitoMemberDefinition
  }

memberDefinition :: { "CognitoMemberDefinition" :: CognitoMemberDefinition } -> MemberDefinition
memberDefinition required =
  required

-- | `AWS::SageMaker::Workteam.CognitoMemberDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-cognitomemberdefinition.html
-- |
-- | - `CognitoUserPool`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-cognitomemberdefinition.html#cfn-sagemaker-workteam-cognitomemberdefinition-cognitouserpool
-- | - `CognitoClientId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-cognitomemberdefinition.html#cfn-sagemaker-workteam-cognitomemberdefinition-cognitoclientid
-- | - `CognitoUserGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-cognitomemberdefinition.html#cfn-sagemaker-workteam-cognitomemberdefinition-cognitousergroup
type CognitoMemberDefinition =
  { "CognitoUserPool" :: String
  , "CognitoClientId" :: String
  , "CognitoUserGroup" :: String
  }

cognitoMemberDefinition :: { "CognitoUserPool" :: String, "CognitoClientId" :: String, "CognitoUserGroup" :: String } -> CognitoMemberDefinition
cognitoMemberDefinition required =
  required