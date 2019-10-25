module CloudFormation.AWS.WAFRegional.WebACL where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype WebACL = WebACL
  { "MetricName" :: Value String
  , "DefaultAction" :: Value Action
  , "Name" :: Value String
  , "Rules" :: Maybe (Value (Array Rule))
  }

derive instance newtypeWebACL :: Newtype WebACL _
derive newtype instance writeWebACL :: WriteForeign WebACL
instance resourceWebACL :: Resource WebACL where type_ _ = "AWS::WAFRegional::WebACL"

webACL :: { "MetricName" :: Value String, "DefaultAction" :: Value Action, "Name" :: Value String } -> WebACL
webACL required = WebACL
  (merge required
    { "Rules" : Nothing
    })

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
  { "Action" :: Value Action
  , "Priority" :: Value Int
  , "RuleId" :: Value String
  }

rule :: { "Action" :: Value Action, "Priority" :: Value Int, "RuleId" :: Value String } -> Rule
rule required =
  required

-- | `AWS::WAFRegional::WebACL.Action`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html#cfn-wafregional-webacl-action-type
type Action =
  { "Type" :: Value String
  }

action :: { "Type" :: Value String } -> Action
action required =
  required