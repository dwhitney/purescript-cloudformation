module CloudFormation.AWS.WAFRegional.Rule where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::WAFRegional::Rule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-rule.html
-- |
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-rule.html#cfn-wafregional-rule-metricname
-- | - `Predicates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-rule.html#cfn-wafregional-rule-predicates
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-rule.html#cfn-wafregional-rule-name
type Rule =
  { "MetricName" :: String
  , "Name" :: String
  , "Predicates" :: Maybe (Array Predicate)
  }

rule :: { "MetricName" :: String, "Name" :: String } -> Rule
rule required =
  merge required
    { "Predicates" : Nothing
    }

-- | `AWS::WAFRegional::Rule.Predicate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-rule-predicate.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-rule-predicate.html#cfn-wafregional-rule-predicate-type
-- | - `DataId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-rule-predicate.html#cfn-wafregional-rule-predicate-dataid
-- | - `Negated`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-rule-predicate.html#cfn-wafregional-rule-predicate-negated
type Predicate =
  { "Type" :: String
  , "DataId" :: String
  , "Negated" :: Boolean
  }

predicate :: { "Type" :: String, "DataId" :: String, "Negated" :: Boolean } -> Predicate
predicate required =
  required