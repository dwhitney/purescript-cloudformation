module CloudFormation.AWS.WAFRegional.RateBasedRule where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::WAFRegional::RateBasedRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html
-- |
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
newtype RateBasedRule = RateBasedRule
  { "MetricName" :: Value String
  , "RateLimit" :: Value Int
  , "RateKey" :: Value String
  , "Name" :: Value String
  , "MatchPredicates" :: Maybe (Value (Array Predicate))
  }

derive instance newtypeRateBasedRule :: Newtype RateBasedRule _
derive newtype instance writeRateBasedRule :: WriteForeign RateBasedRule
instance resourceRateBasedRule :: Resource RateBasedRule where type_ _ = "AWS::WAFRegional::RateBasedRule"

rateBasedRule :: { "MetricName" :: Value String, "RateLimit" :: Value Int, "RateKey" :: Value String, "Name" :: Value String } -> RateBasedRule
rateBasedRule required = RateBasedRule
  (merge required
    { "MatchPredicates" : Nothing
    })

-- | `AWS::WAFRegional::RateBasedRule.Predicate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ratebasedrule-predicate.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ratebasedrule-predicate.html#cfn-wafregional-ratebasedrule-predicate-type
-- | - `DataId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ratebasedrule-predicate.html#cfn-wafregional-ratebasedrule-predicate-dataid
-- | - `Negated`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ratebasedrule-predicate.html#cfn-wafregional-ratebasedrule-predicate-negated
type Predicate =
  { "Type" :: Value String
  , "DataId" :: Value String
  , "Negated" :: Value Boolean
  }

predicate :: { "Type" :: Value String, "DataId" :: Value String, "Negated" :: Value Boolean } -> Predicate
predicate required =
  required