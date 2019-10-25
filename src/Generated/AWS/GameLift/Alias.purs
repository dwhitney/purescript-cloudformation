module CloudFormation.AWS.GameLift.Alias where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Name" :: Value String
  , "RoutingStrategy" :: Value RoutingStrategy
  , "Description" :: Maybe (Value String)
  }

derive instance newtypeAlias :: Newtype Alias _
derive newtype instance writeAlias :: WriteForeign Alias
instance resourceAlias :: Resource Alias where type_ _ = "AWS::GameLift::Alias"

alias :: { "Name" :: Value String, "RoutingStrategy" :: Value RoutingStrategy } -> Alias
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
  { "Type" :: Value String
  , "FleetId" :: Maybe (Value String)
  , "Message" :: Maybe (Value String)
  }

routingStrategy :: { "Type" :: Value String } -> RoutingStrategy
routingStrategy required =
  (merge required
    { "FleetId" : Nothing
    , "Message" : Nothing
    })