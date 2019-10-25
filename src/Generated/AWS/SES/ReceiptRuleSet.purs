module CloudFormation.AWS.SES.ReceiptRuleSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SES::ReceiptRuleSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptruleset.html
-- |
-- | - `RuleSetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptruleset.html#cfn-ses-receiptruleset-rulesetname
newtype ReceiptRuleSet = ReceiptRuleSet
  { "RuleSetName" :: Maybe (Value String)
  }

derive instance newtypeReceiptRuleSet :: Newtype ReceiptRuleSet _
derive newtype instance writeReceiptRuleSet :: WriteForeign ReceiptRuleSet
instance resourceReceiptRuleSet :: Resource ReceiptRuleSet where type_ _ = "AWS::SES::ReceiptRuleSet"

receiptRuleSet :: ReceiptRuleSet
receiptRuleSet = ReceiptRuleSet
  { "RuleSetName" : Nothing
  }