module CloudFormation.AWS.WAF.Rule where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "MetricName" :: String
  , "Name" :: String
  , "Predicates" :: Maybe (Array Predicate)
  }

derive instance newtypeRule :: Newtype Rule _
instance resourceRule :: Resource Rule where type_ _ = "AWS::WAF::Rule"

rule :: { "MetricName" :: String, "Name" :: String } -> Rule
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
  { "DataId" :: String
  , "Negated" :: Boolean
  , "Type" :: String
  }

predicate :: { "DataId" :: String, "Negated" :: Boolean, "Type" :: String } -> Predicate
predicate required =
  required