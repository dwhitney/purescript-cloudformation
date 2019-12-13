module CloudFormation.AWS.GameLift.GameSessionQueue where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::GameLift::GameSessionQueue`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html
-- |
-- | - `TimeoutInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-timeoutinseconds
-- | - `PlayerLatencyPolicies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-playerlatencypolicies
-- | - `Destinations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-destinations
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-name
newtype GameSessionQueue = GameSessionQueue
  { "Name" :: Value String
  , "TimeoutInSeconds" :: Maybe (Value Int)
  , "PlayerLatencyPolicies" :: Maybe (Value (Array PlayerLatencyPolicy))
  , "Destinations" :: Maybe (Value (Array Destination))
  }

derive instance newtypeGameSessionQueue :: Newtype GameSessionQueue _
derive newtype instance writeGameSessionQueue :: WriteForeign GameSessionQueue
instance resourceGameSessionQueue :: Resource GameSessionQueue where type_ _ = "AWS::GameLift::GameSessionQueue"

gameSessionQueue :: { "Name" :: Value String } -> GameSessionQueue
gameSessionQueue required = GameSessionQueue
  (merge required
    { "TimeoutInSeconds" : Nothing
    , "PlayerLatencyPolicies" : Nothing
    , "Destinations" : Nothing
    })

-- | `AWS::GameLift::GameSessionQueue.PlayerLatencyPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html
-- |
-- | - `PolicyDurationSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html#cfn-gamelift-gamesessionqueue-playerlatencypolicy-policydurationseconds
-- | - `MaximumIndividualPlayerLatencyMilliseconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html#cfn-gamelift-gamesessionqueue-playerlatencypolicy-maximumindividualplayerlatencymilliseconds
type PlayerLatencyPolicy =
  { "PolicyDurationSeconds" :: Maybe (Value Int)
  , "MaximumIndividualPlayerLatencyMilliseconds" :: Maybe (Value Int)
  }

playerLatencyPolicy :: PlayerLatencyPolicy
playerLatencyPolicy =
  { "PolicyDurationSeconds" : Nothing
  , "MaximumIndividualPlayerLatencyMilliseconds" : Nothing
  }

-- | `AWS::GameLift::GameSessionQueue.Destination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-destination.html
-- |
-- | - `DestinationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-destination.html#cfn-gamelift-gamesessionqueue-destination-destinationarn
type Destination =
  { "DestinationArn" :: Maybe (Value String)
  }

destination :: Destination
destination =
  { "DestinationArn" : Nothing
  }