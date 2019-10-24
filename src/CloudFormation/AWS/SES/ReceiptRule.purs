module CloudFormation.AWS.SES.ReceiptRule where 

import Data.Maybe (Maybe(..))
import Record (merge)


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

type AddHeaderAction =
  { "HeaderValue" :: String
  , "HeaderName" :: String
  }

addHeaderAction :: { "HeaderValue" :: String, "HeaderName" :: String } -> AddHeaderAction
addHeaderAction required =
  required

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

type SNSAction =
  { "TopicArn" :: Maybe String
  , "Encoding" :: Maybe String
  }

snsaNSAction :: SNSAction
snsaNSAction =
  { "TopicArn" : Nothing
  , "Encoding" : Nothing
  }

type StopAction =
  { "Scope" :: String
  , "TopicArn" :: Maybe String
  }

stopAction :: { "Scope" :: String } -> StopAction
stopAction required =
  merge required
    { "TopicArn" : Nothing
    }

type WorkmailAction =
  { "OrganizationArn" :: String
  , "TopicArn" :: Maybe String
  }

workmailAction :: { "OrganizationArn" :: String } -> WorkmailAction
workmailAction required =
  merge required
    { "TopicArn" : Nothing
    }

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