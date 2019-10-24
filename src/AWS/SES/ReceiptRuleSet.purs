module AWS.SES.ReceiptRuleSet where 

import Data.Maybe (Maybe(..))


type ReceiptRuleSet =
  { "RuleSetName" :: Maybe String
  }

receiptRuleSet :: ReceiptRuleSet
receiptRuleSet =
  { "RuleSetName" : Nothing
  }