module CloudFormation.AWS.WAF.WebACL where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::WAF::WebACL`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-webacl.html
-- |
-- | - `DefaultAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-webacl.html#cfn-waf-webacl-defaultaction
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-webacl.html#cfn-waf-webacl-metricname
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-webacl.html#cfn-waf-webacl-name
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-webacl.html#cfn-waf-webacl-rules
type WebACL =
  { "DefaultAction" :: WafAction
  , "MetricName" :: String
  , "Name" :: String
  , "Rules" :: Maybe (Array ActivatedRule)
  }

webACL :: { "DefaultAction" :: WafAction, "MetricName" :: String, "Name" :: String } -> WebACL
webACL required =
  merge required
    { "Rules" : Nothing
    }

-- | `AWS::WAF::WebACL.ActivatedRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html
-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-action
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-priority
-- | - `RuleId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-ruleid
type ActivatedRule =
  { "Priority" :: Int
  , "RuleId" :: String
  , "Action" :: Maybe WafAction
  }

activatedRule :: { "Priority" :: Int, "RuleId" :: String } -> ActivatedRule
activatedRule required =
  merge required
    { "Action" : Nothing
    }

-- | `AWS::WAF::WebACL.WafAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html#cfn-waf-webacl-action-type
type WafAction =
  { "Type" :: String
  }

wafAction :: { "Type" :: String } -> WafAction
wafAction required =
  required