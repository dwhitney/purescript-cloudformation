module AWS.SageMaker.Workteam where 

import Data.Maybe (Maybe(..))
import Tag


type Workteam =
  { "Description" :: Maybe String
  , "NotificationConfiguration" :: Maybe NotificationConfiguration
  , "WorkteamName" :: Maybe String
  , "MemberDefinitions" :: Maybe (Array MemberDefinition)
  , "Tags" :: Maybe (Array Tag)
  }

workteam :: Workteam
workteam =
  { "Description" : Nothing
  , "NotificationConfiguration" : Nothing
  , "WorkteamName" : Nothing
  , "MemberDefinitions" : Nothing
  , "Tags" : Nothing
  }

type NotificationConfiguration =
  { "NotificationTopicArn" :: String
  }

notificationConfiguration :: { "NotificationTopicArn" :: String } -> NotificationConfiguration
notificationConfiguration required =
  required

type MemberDefinition =
  { "CognitoMemberDefinition" :: CognitoMemberDefinition
  }

memberDefinition :: { "CognitoMemberDefinition" :: CognitoMemberDefinition } -> MemberDefinition
memberDefinition required =
  required

type CognitoMemberDefinition =
  { "CognitoUserPool" :: String
  , "CognitoClientId" :: String
  , "CognitoUserGroup" :: String
  }

cognitoMemberDefinition :: { "CognitoUserPool" :: String, "CognitoClientId" :: String, "CognitoUserGroup" :: String } -> CognitoMemberDefinition
cognitoMemberDefinition required =
  required