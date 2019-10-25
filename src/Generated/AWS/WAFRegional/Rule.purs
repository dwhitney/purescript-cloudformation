module CloudFormation.AWS.WAFRegional.Rule where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::WAFRegional::Rule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-rule.html
-- |
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-rule.html#cfn-wafregional-rule-metricname
-- | - `Predicates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-rule.html#cfn-wafregional-rule-predicates
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-rule.html#cfn-wafregional-rule-name
newtype Rule = Rule
  { "MetricName" :: Value String
  , "Name" :: Value String
  , "Predicates" :: Maybe (Value (Array Predicate))
  }

derive instance newtypeRule :: Newtype Rule _
derive newtype instance writeRule :: WriteForeign Rule
instance resourceRule :: Resource Rule where type_ _ = "AWS::WAFRegional::Rule"

rule :: { "MetricName" :: Value String, "Name" :: Value String } -> Rule
rule required = Rule
  (merge required
    { "Predicates" : Nothing
    })

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
  { "Type" :: Value String
  , "DataId" :: Value String
  , "Negated" :: Value Boolean
  }

predicate :: { "Type" :: Value String, "DataId" :: Value String, "Negated" :: Value Boolean } -> Predicate
predicate required =
  required