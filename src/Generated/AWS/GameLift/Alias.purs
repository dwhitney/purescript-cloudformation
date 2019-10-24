module CloudFormation.AWS.GameLift.Alias where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::GameLift::Alias`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-alias.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-alias.html#cfn-gamelift-alias-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-alias.html#cfn-gamelift-alias-name
-- | - `RoutingStrategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-alias.html#cfn-gamelift-alias-routingstrategy
newtype Alias = Alias
  { "Name" :: String
  , "RoutingStrategy" :: RoutingStrategy
  , "Description" :: Maybe String
  }

derive instance newtypeAlias :: Newtype Alias _
instance resourceAlias :: Resource Alias where type_ _ = "AWS::GameLift::Alias"

alias :: { "Name" :: String, "RoutingStrategy" :: RoutingStrategy } -> Alias
alias required = Alias
  (merge required
    { "Description" : Nothing
    })

-- | `AWS::GameLift::Alias.RoutingStrategy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html
-- |
-- | - `FleetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html#cfn-gamelift-alias-routingstrategy-fleetid
-- | - `Message`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html#cfn-gamelift-alias-routingstrategy-message
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html#cfn-gamelift-alias-routingstrategy-type
type RoutingStrategy =
  { "Type" :: String
  , "FleetId" :: Maybe String
  , "Message" :: Maybe String
  }

routingStrategy :: { "Type" :: String } -> RoutingStrategy
routingStrategy required =
  (merge required
    { "FleetId" : Nothing
    , "Message" : Nothing
    })