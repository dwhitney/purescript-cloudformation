module CloudFormation.AWS.GameLift.MatchmakingConfiguration where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::GameLift::MatchmakingConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html
-- |
-- | - `GameProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-gameproperties
-- | - `GameSessionData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-gamesessiondata
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-description
-- | - `AcceptanceTimeoutSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-acceptancetimeoutseconds
-- | - `NotificationTarget`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-notificationtarget
-- | - `CustomEventData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-customeventdata
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-name
-- | - `AdditionalPlayerCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-additionalplayercount
-- | - `BackfillMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-backfillmode
-- | - `RequestTimeoutSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-requesttimeoutseconds
-- | - `AcceptanceRequired`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-acceptancerequired
-- | - `RuleSetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-rulesetname
-- | - `GameSessionQueueArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-gamesessionqueuearns
newtype MatchmakingConfiguration = MatchmakingConfiguration
  { "Name" :: Value String
  , "RequestTimeoutSeconds" :: Value Int
  , "AcceptanceRequired" :: Value Boolean
  , "RuleSetName" :: Value String
  , "GameSessionQueueArns" :: Value (Array String)
  , "GameProperties" :: Maybe (Value (Array GameProperty))
  , "GameSessionData" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "AcceptanceTimeoutSeconds" :: Maybe (Value Int)
  , "NotificationTarget" :: Maybe (Value String)
  , "CustomEventData" :: Maybe (Value String)
  , "AdditionalPlayerCount" :: Maybe (Value Int)
  , "BackfillMode" :: Maybe (Value String)
  }

derive instance newtypeMatchmakingConfiguration :: Newtype MatchmakingConfiguration _
derive newtype instance writeMatchmakingConfiguration :: WriteForeign MatchmakingConfiguration
instance resourceMatchmakingConfiguration :: Resource MatchmakingConfiguration where type_ _ = "AWS::GameLift::MatchmakingConfiguration"

matchmakingConfiguration :: { "Name" :: Value String, "RequestTimeoutSeconds" :: Value Int, "AcceptanceRequired" :: Value Boolean, "RuleSetName" :: Value String, "GameSessionQueueArns" :: Value (Array String) } -> MatchmakingConfiguration
matchmakingConfiguration required = MatchmakingConfiguration
  (merge required
    { "GameProperties" : Nothing
    , "GameSessionData" : Nothing
    , "Description" : Nothing
    , "AcceptanceTimeoutSeconds" : Nothing
    , "NotificationTarget" : Nothing
    , "CustomEventData" : Nothing
    , "AdditionalPlayerCount" : Nothing
    , "BackfillMode" : Nothing
    })

-- | `AWS::GameLift::MatchmakingConfiguration.GameProperty`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html#cfn-gamelift-matchmakingconfiguration-gameproperty-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html#cfn-gamelift-matchmakingconfiguration-gameproperty-key
type GameProperty =
  { "Value" :: Value String
  , "Key" :: Value String
  }

gameProperty :: { "Value" :: Value String, "Key" :: Value String } -> GameProperty
gameProperty required =
  required