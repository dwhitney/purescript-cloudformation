module CloudFormation.AWS.WAFRegional.WebACL where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::WAFRegional::WebACL`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html
-- |
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html#cfn-wafregional-webacl-metricname
-- | - `DefaultAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html#cfn-wafregional-webacl-defaultaction
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html#cfn-wafregional-webacl-rules
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html#cfn-wafregional-webacl-name
type WebACL =
  { "MetricName" :: String
  , "DefaultAction" :: Action
  , "Name" :: String
  , "Rules" :: Maybe (Array Rule)
  }

webACL :: { "MetricName" :: String, "DefaultAction" :: Action, "Name" :: String } -> WebACL
webACL required =
  merge required
    { "Rules" : Nothing
    }

-- | `AWS::WAFRegional::WebACL.Rule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html
-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html#cfn-wafregional-webacl-rule-action
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html#cfn-wafregional-webacl-rule-priority
-- | - `RuleId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html#cfn-wafregional-webacl-rule-ruleid
type Rule =
  { "Action" :: Action
  , "Priority" :: Int
  , "RuleId" :: String
  }

rule :: { "Action" :: Action, "Priority" :: Int, "RuleId" :: String } -> Rule
rule required =
  required

-- | `AWS::WAFRegional::WebACL.Action`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html#cfn-wafregional-webacl-action-type
type Action =
  { "Type" :: String
  }

action :: { "Type" :: String } -> Action
action required =
  required