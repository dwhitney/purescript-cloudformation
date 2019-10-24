module AWS.PinpointEmail.Identity where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Identity =
  { "Name" :: String
  , "FeedbackForwardingEnabled" :: Maybe Boolean
  , "DkimSigningEnabled" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tags)
  , "MailFromAttributes" :: Maybe MailFromAttributes
  }

identity :: { "Name" :: String } -> Identity
identity required =
  merge required
    { "FeedbackForwardingEnabled" : Nothing
    , "DkimSigningEnabled" : Nothing
    , "Tags" : Nothing
    , "MailFromAttributes" : Nothing
    }

type MailFromAttributes =
  { "MailFromDomain" :: Maybe String
  , "BehaviorOnMxFailure" :: Maybe String
  }

mailFromAttributes :: MailFromAttributes
mailFromAttributes =
  { "MailFromDomain" : Nothing
  , "BehaviorOnMxFailure" : Nothing
  }

type Tags =
  { "Value" :: Maybe String
  , "Key" :: Maybe String
  }

tags :: Tags
tags =
  { "Value" : Nothing
  , "Key" : Nothing
  }