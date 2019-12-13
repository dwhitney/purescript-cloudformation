module CloudFormation.AWS.CloudWatch.InsightRule where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CloudWatch::InsightRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html
-- |
-- | - `RuleState`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html#cfn-cloudwatch-insightrule-rulestate
-- | - `RuleBody`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html#cfn-cloudwatch-insightrule-rulebody
-- | - `RuleName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html#cfn-cloudwatch-insightrule-rulename
newtype InsightRule = InsightRule
  { "RuleState" :: Value String
  , "RuleBody" :: Value String
  , "RuleName" :: Value String
  }

derive instance newtypeInsightRule :: Newtype InsightRule _
derive newtype instance writeInsightRule :: WriteForeign InsightRule
instance resourceInsightRule :: Resource InsightRule where type_ _ = "AWS::CloudWatch::InsightRule"

insightRule :: { "RuleState" :: Value String, "RuleBody" :: Value String, "RuleName" :: Value String } -> InsightRule
insightRule required = InsightRule
  required