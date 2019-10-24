module CloudFormation.AWS.WAFRegional.RateBasedRule where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::WAFRegional::RateBasedRule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html-- |
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-metricname
-- | - `RateLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-ratelimit
-- | - `MatchPredicates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-matchpredicates
-- | - `RateKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-ratekey
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-name
type RateBasedRule =
  { "MetricName" :: String
  , "RateLimit" :: Int
  , "RateKey" :: String
  , "Name" :: String
  , "MatchPredicates" :: Maybe (Array Predicate)
  }

rateBasedRule :: { "MetricName" :: String, "RateLimit" :: Int, "RateKey" :: String, "Name" :: String } -> RateBasedRule
rateBasedRule required =
  merge required
    { "MatchPredicates" : Nothing
    }

-- | `AWS::WAFRegional::RateBasedRule.Predicate`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ratebasedrule-predicate.html-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ratebasedrule-predicate.html#cfn-wafregional-ratebasedrule-predicate-type
-- | - `DataId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ratebasedrule-predicate.html#cfn-wafregional-ratebasedrule-predicate-dataid
-- | - `Negated`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ratebasedrule-predicate.html#cfn-wafregional-ratebasedrule-predicate-negated
type Predicate =
  { "Type" :: String
  , "DataId" :: String
  , "Negated" :: Boolean
  }

predicate :: { "Type" :: String, "DataId" :: String, "Negated" :: Boolean } -> Predicate
predicate required =
  required