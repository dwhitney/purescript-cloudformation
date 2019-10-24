module CloudFormation.AWS.SES.ReceiptRuleSet where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SES::ReceiptRuleSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptruleset.html
-- |
-- | - `RuleSetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptruleset.html#cfn-ses-receiptruleset-rulesetname
newtype ReceiptRuleSet = ReceiptRuleSet
  { "RuleSetName" :: Maybe String
  }

derive instance newtypeReceiptRuleSet :: Newtype ReceiptRuleSet _
instance resourceReceiptRuleSet :: Resource ReceiptRuleSet where type_ _ = "AWS::SES::ReceiptRuleSet"

receiptRuleSet :: ReceiptRuleSet
receiptRuleSet = ReceiptRuleSet
  { "RuleSetName" : Nothing
  }