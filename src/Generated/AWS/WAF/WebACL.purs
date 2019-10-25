module CloudFormation.AWS.WAF.WebACL where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype WebACL = WebACL
  { "DefaultAction" :: Value WafAction
  , "MetricName" :: Value String
  , "Name" :: Value String
  , "Rules" :: Maybe (Value (Array ActivatedRule))
  }

derive instance newtypeWebACL :: Newtype WebACL _
derive newtype instance writeWebACL :: WriteForeign WebACL
instance resourceWebACL :: Resource WebACL where type_ _ = "AWS::WAF::WebACL"

webACL :: { "DefaultAction" :: Value WafAction, "MetricName" :: Value String, "Name" :: Value String } -> WebACL
webACL required = WebACL
  (merge required
    { "Rules" : Nothing
    })

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
  { "Priority" :: Value Int
  , "RuleId" :: Value String
  , "Action" :: Maybe (Value WafAction)
  }

activatedRule :: { "Priority" :: Value Int, "RuleId" :: Value String } -> ActivatedRule
activatedRule required =
  (merge required
    { "Action" : Nothing
    })

-- | `AWS::WAF::WebACL.WafAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html#cfn-waf-webacl-action-type
type WafAction =
  { "Type" :: Value String
  }

wafAction :: { "Type" :: Value String } -> WafAction
wafAction required =
  required