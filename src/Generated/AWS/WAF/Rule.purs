module CloudFormation.AWS.WAF.Rule where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::WAF::Rule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-rule.html
-- |
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-rule.html#cfn-waf-rule-metricname
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-rule.html#cfn-waf-rule-name
-- | - `Predicates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-rule.html#cfn-waf-rule-predicates
newtype Rule = Rule
  { "MetricName" :: Value String
  , "Name" :: Value String
  , "Predicates" :: Maybe (Value (Array Predicate))
  }

derive instance newtypeRule :: Newtype Rule _
derive newtype instance writeRule :: WriteForeign Rule
instance resourceRule :: Resource Rule where type_ _ = "AWS::WAF::Rule"

rule :: { "MetricName" :: Value String, "Name" :: Value String } -> Rule
rule required = Rule
  (merge required
    { "Predicates" : Nothing
    })

-- | `AWS::WAF::Rule.Predicate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-rule-predicates.html
-- |
-- | - `DataId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-rule-predicates.html#cfn-waf-rule-predicates-dataid
-- | - `Negated`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-rule-predicates.html#cfn-waf-rule-predicates-negated
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-rule-predicates.html#cfn-waf-rule-predicates-type
type Predicate =
  { "DataId" :: Value String
  , "Negated" :: Value Boolean
  , "Type" :: Value String
  }

predicate :: { "DataId" :: Value String, "Negated" :: Value Boolean, "Type" :: Value String } -> Predicate
predicate required =
  required