module CloudFormation.AWS.GameLift.MatchmakingRuleSet where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::GameLift::MatchmakingRuleSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingruleset.html
-- |
-- | - `RuleSetBody`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingruleset.html#cfn-gamelift-matchmakingruleset-rulesetbody
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingruleset.html#cfn-gamelift-matchmakingruleset-name
newtype MatchmakingRuleSet = MatchmakingRuleSet
  { "RuleSetBody" :: Value String
  , "Name" :: Value String
  }

derive instance newtypeMatchmakingRuleSet :: Newtype MatchmakingRuleSet _
derive newtype instance writeMatchmakingRuleSet :: WriteForeign MatchmakingRuleSet
instance resourceMatchmakingRuleSet :: Resource MatchmakingRuleSet where type_ _ = "AWS::GameLift::MatchmakingRuleSet"

matchmakingRuleSet :: { "RuleSetBody" :: Value String, "Name" :: Value String } -> MatchmakingRuleSet
matchmakingRuleSet required = MatchmakingRuleSet
  required