module CloudFormation.AWS.SES.ReceiptRule where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SES::ReceiptRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html
-- |
-- | - `After`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html#cfn-ses-receiptrule-after
-- | - `Rule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html#cfn-ses-receiptrule-rule
-- | - `RuleSetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html#cfn-ses-receiptrule-rulesetname
newtype ReceiptRule = ReceiptRule
  { "Rule" :: Value Rule
  , "RuleSetName" :: Value String
  , "After" :: Maybe (Value String)
  }

derive instance newtypeReceiptRule :: Newtype ReceiptRule _
derive newtype instance writeReceiptRule :: WriteForeign ReceiptRule
instance resourceReceiptRule :: Resource ReceiptRule where type_ _ = "AWS::SES::ReceiptRule"

receiptRule :: { "Rule" :: Value Rule, "RuleSetName" :: Value String } -> ReceiptRule
receiptRule required = ReceiptRule
  (merge required
    { "After" : Nothing
    })

-- | `AWS::SES::ReceiptRule.AddHeaderAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html
-- |
-- | - `HeaderValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html#cfn-ses-receiptrule-addheaderaction-headervalue
-- | - `HeaderName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html#cfn-ses-receiptrule-addheaderaction-headername
type AddHeaderAction =
  { "HeaderValue" :: Value String
  , "HeaderName" :: Value String
  }

addHeaderAction :: { "HeaderValue" :: Value String, "HeaderName" :: Value String } -> AddHeaderAction
addHeaderAction required =
  required

-- | `AWS::SES::ReceiptRule.LambdaAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html
-- |
-- | - `FunctionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-functionarn
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-topicarn
-- | - `InvocationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-invocationtype
type LambdaAction =
  { "FunctionArn" :: Value String
  , "TopicArn" :: Maybe (Value String)
  , "InvocationType" :: Maybe (Value String)
  }

lambdaAction :: { "FunctionArn" :: Value String } -> LambdaAction
lambdaAction required =
  (merge required
    { "TopicArn" : Nothing
    , "InvocationType" : Nothing
    })

-- | `AWS::SES::ReceiptRule.Rule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html
-- |
-- | - `ScanEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-scanenabled
-- | - `Recipients`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-recipients
-- | - `Actions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-actions
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-enabled
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-name
-- | - `TlsPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-tlspolicy
type Rule =
  { "ScanEnabled" :: Maybe (Value Boolean)
  , "Recipients" :: Maybe (Value (Array String))
  , "Actions" :: Maybe (Value (Array Action))
  , "Enabled" :: Maybe (Value Boolean)
  , "Name" :: Maybe (Value String)
  , "TlsPolicy" :: Maybe (Value String)
  }

rule :: Rule
rule =
  { "ScanEnabled" : Nothing
  , "Recipients" : Nothing
  , "Actions" : Nothing
  , "Enabled" : Nothing
  , "Name" : Nothing
  , "TlsPolicy" : Nothing
  }

-- | `AWS::SES::ReceiptRule.SNSAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-snsaction.html
-- |
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-snsaction.html#cfn-ses-receiptrule-snsaction-topicarn
-- | - `Encoding`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-snsaction.html#cfn-ses-receiptrule-snsaction-encoding
type SNSAction =
  { "TopicArn" :: Maybe (Value String)
  , "Encoding" :: Maybe (Value String)
  }

snsaNSAction :: SNSAction
snsaNSAction =
  { "TopicArn" : Nothing
  , "Encoding" : Nothing
  }

-- | `AWS::SES::ReceiptRule.StopAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-stopaction.html
-- |
-- | - `Scope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-stopaction.html#cfn-ses-receiptrule-stopaction-scope
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-stopaction.html#cfn-ses-receiptrule-stopaction-topicarn
type StopAction =
  { "Scope" :: Value String
  , "TopicArn" :: Maybe (Value String)
  }

stopAction :: { "Scope" :: Value String } -> StopAction
stopAction required =
  (merge required
    { "TopicArn" : Nothing
    })

-- | `AWS::SES::ReceiptRule.WorkmailAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html
-- |
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html#cfn-ses-receiptrule-workmailaction-topicarn
-- | - `OrganizationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html#cfn-ses-receiptrule-workmailaction-organizationarn
type WorkmailAction =
  { "OrganizationArn" :: Value String
  , "TopicArn" :: Maybe (Value String)
  }

workmailAction :: { "OrganizationArn" :: Value String } -> WorkmailAction
workmailAction required =
  (merge required
    { "TopicArn" : Nothing
    })

-- | `AWS::SES::ReceiptRule.S3Action`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html
-- |
-- | - `BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-bucketname
-- | - `KmsKeyArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-kmskeyarn
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-topicarn
-- | - `ObjectKeyPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-objectkeyprefix
type S3Action =
  { "BucketName" :: Value String
  , "KmsKeyArn" :: Maybe (Value String)
  , "TopicArn" :: Maybe (Value String)
  , "ObjectKeyPrefix" :: Maybe (Value String)
  }

s3Action :: { "BucketName" :: Value String } -> S3Action
s3Action required =
  (merge required
    { "KmsKeyArn" : Nothing
    , "TopicArn" : Nothing
    , "ObjectKeyPrefix" : Nothing
    })

-- | `AWS::SES::ReceiptRule.Action`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html
-- |
-- | - `BounceAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-bounceaction
-- | - `S3Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-s3action
-- | - `StopAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-stopaction
-- | - `SNSAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-snsaction
-- | - `WorkmailAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-workmailaction
-- | - `AddHeaderAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-addheaderaction
-- | - `LambdaAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html#cfn-ses-receiptrule-action-lambdaaction
type Action =
  { "BounceAction" :: Maybe (Value BounceAction)
  , "S3Action" :: Maybe (Value S3Action)
  , "StopAction" :: Maybe (Value StopAction)
  , "SNSAction" :: Maybe (Value SNSAction)
  , "WorkmailAction" :: Maybe (Value WorkmailAction)
  , "AddHeaderAction" :: Maybe (Value AddHeaderAction)
  , "LambdaAction" :: Maybe (Value LambdaAction)
  }

action :: Action
action =
  { "BounceAction" : Nothing
  , "S3Action" : Nothing
  , "StopAction" : Nothing
  , "SNSAction" : Nothing
  , "WorkmailAction" : Nothing
  , "AddHeaderAction" : Nothing
  , "LambdaAction" : Nothing
  }

-- | `AWS::SES::ReceiptRule.BounceAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html
-- |
-- | - `Sender`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-sender
-- | - `SmtpReplyCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-smtpreplycode
-- | - `Message`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-message
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-topicarn
-- | - `StatusCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html#cfn-ses-receiptrule-bounceaction-statuscode
type BounceAction =
  { "Sender" :: Value String
  , "SmtpReplyCode" :: Value String
  , "Message" :: Value String
  , "TopicArn" :: Maybe (Value String)
  , "StatusCode" :: Maybe (Value String)
  }

bounceAction :: { "Sender" :: Value String, "SmtpReplyCode" :: Value String, "Message" :: Value String } -> BounceAction
bounceAction required =
  (merge required
    { "TopicArn" : Nothing
    , "StatusCode" : Nothing
    })