module CloudFormation.AWS.SES.ReceiptRule where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::SES::ReceiptRule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html-- |
-- | - `After`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html#cfn-ses-receiptrule-after
-- | - `Rule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html#cfn-ses-receiptrule-rule
-- | - `RuleSetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html#cfn-ses-receiptrule-rulesetname
type ReceiptRule =
  { "Rule" :: Rule
  , "RuleSetName" :: String
  , "After" :: Maybe String
  }

receiptRule :: { "Rule" :: Rule, "RuleSetName" :: String } -> ReceiptRule
receiptRule required =
  merge required
    { "After" : Nothing
    }

-- | `AWS::SES::ReceiptRule.AddHeaderAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html-- |
-- | - `HeaderValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html#cfn-ses-receiptrule-addheaderaction-headervalue
-- | - `HeaderName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-addheaderaction.html#cfn-ses-receiptrule-addheaderaction-headername
type AddHeaderAction =
  { "HeaderValue" :: String
  , "HeaderName" :: String
  }

addHeaderAction :: { "HeaderValue" :: String, "HeaderName" :: String } -> AddHeaderAction
addHeaderAction required =
  required

-- | `AWS::SES::ReceiptRule.LambdaAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html-- |
-- | - `FunctionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-functionarn
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-topicarn
-- | - `InvocationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-lambdaaction.html#cfn-ses-receiptrule-lambdaaction-invocationtype
type LambdaAction =
  { "FunctionArn" :: String
  , "TopicArn" :: Maybe String
  , "InvocationType" :: Maybe String
  }

lambdaAction :: { "FunctionArn" :: String } -> LambdaAction
lambdaAction required =
  merge required
    { "TopicArn" : Nothing
    , "InvocationType" : Nothing
    }

-- | `AWS::SES::ReceiptRule.Rule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html-- |
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
  { "ScanEnabled" :: Maybe Boolean
  , "Recipients" :: Maybe (Array String)
  , "Actions" :: Maybe (Array Action)
  , "Enabled" :: Maybe Boolean
  , "Name" :: Maybe String
  , "TlsPolicy" :: Maybe String
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

-- | `AWS::SES::ReceiptRule.SNSAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-snsaction.html-- |
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-snsaction.html#cfn-ses-receiptrule-snsaction-topicarn
-- | - `Encoding`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-snsaction.html#cfn-ses-receiptrule-snsaction-encoding
type SNSAction =
  { "TopicArn" :: Maybe String
  , "Encoding" :: Maybe String
  }

snsaNSAction :: SNSAction
snsaNSAction =
  { "TopicArn" : Nothing
  , "Encoding" : Nothing
  }

-- | `AWS::SES::ReceiptRule.StopAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-stopaction.html-- |
-- | - `Scope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-stopaction.html#cfn-ses-receiptrule-stopaction-scope
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-stopaction.html#cfn-ses-receiptrule-stopaction-topicarn
type StopAction =
  { "Scope" :: String
  , "TopicArn" :: Maybe String
  }

stopAction :: { "Scope" :: String } -> StopAction
stopAction required =
  merge required
    { "TopicArn" : Nothing
    }

-- | `AWS::SES::ReceiptRule.WorkmailAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html-- |
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html#cfn-ses-receiptrule-workmailaction-topicarn
-- | - `OrganizationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-workmailaction.html#cfn-ses-receiptrule-workmailaction-organizationarn
type WorkmailAction =
  { "OrganizationArn" :: String
  , "TopicArn" :: Maybe String
  }

workmailAction :: { "OrganizationArn" :: String } -> WorkmailAction
workmailAction required =
  merge required
    { "TopicArn" : Nothing
    }

-- | `AWS::SES::ReceiptRule.S3Action`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html-- |
-- | - `BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-bucketname
-- | - `KmsKeyArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-kmskeyarn
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-topicarn
-- | - `ObjectKeyPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-objectkeyprefix
type S3Action =
  { "BucketName" :: String
  , "KmsKeyArn" :: Maybe String
  , "TopicArn" :: Maybe String
  , "ObjectKeyPrefix" :: Maybe String
  }

s3Action :: { "BucketName" :: String } -> S3Action
s3Action required =
  merge required
    { "KmsKeyArn" : Nothing
    , "TopicArn" : Nothing
    , "ObjectKeyPrefix" : Nothing
    }

-- | `AWS::SES::ReceiptRule.Action`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-action.html-- |
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
  { "BounceAction" :: Maybe BounceAction
  , "S3Action" :: Maybe S3Action
  , "StopAction" :: Maybe StopAction
  , "SNSAction" :: Maybe SNSAction
  , "WorkmailAction" :: Maybe WorkmailAction
  , "AddHeaderAction" :: Maybe AddHeaderAction
  , "LambdaAction" :: Maybe LambdaAction
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

-- | `AWS::SES::ReceiptRule.BounceAction`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-bounceaction.html-- |
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
  { "Sender" :: String
  , "SmtpReplyCode" :: String
  , "Message" :: String
  , "TopicArn" :: Maybe String
  , "StatusCode" :: Maybe String
  }

bounceAction :: { "Sender" :: String, "SmtpReplyCode" :: String, "Message" :: String } -> BounceAction
bounceAction required =
  merge required
    { "TopicArn" : Nothing
    , "StatusCode" : Nothing
    }