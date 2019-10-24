module CloudFormation.AWS.SES.ReceiptRuleSet where 

import Data.Maybe (Maybe(..))


-- | `AWS::SES::ReceiptRuleSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptruleset.html
-- |
-- | - `RuleSetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptruleset.html#cfn-ses-receiptruleset-rulesetname
type ReceiptRuleSet =
  { "RuleSetName" :: Maybe String
  }

receiptRuleSet :: ReceiptRuleSet
receiptRuleSet =
  { "RuleSetName" : Nothing
  }