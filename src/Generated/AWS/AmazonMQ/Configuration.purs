module CloudFormation.AWS.AmazonMQ.Configuration where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::AmazonMQ::Configuration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html
-- |
-- | - `EngineVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-engineversion
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-description
-- | - `EngineType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-enginetype
-- | - `Data`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-data
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-name
newtype Configuration = Configuration
  { "EngineVersion" :: String
  , "EngineType" :: String
  , "Data" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "Tags" :: Maybe (Array TagsEntry)
  }

derive instance newtypeConfiguration :: Newtype Configuration _
instance resourceConfiguration :: Resource Configuration where type_ _ = "AWS::AmazonMQ::Configuration"

configuration :: { "EngineVersion" :: String, "EngineType" :: String, "Data" :: String, "Name" :: String } -> Configuration
configuration required = Configuration
  (merge required
    { "Description" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::AmazonMQ::Configuration.TagsEntry`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configuration-tagsentry.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configuration-tagsentry.html#cfn-amazonmq-configuration-tagsentry-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configuration-tagsentry.html#cfn-amazonmq-configuration-tagsentry-key
type TagsEntry =
  { "Value" :: String
  , "Key" :: String
  }

tagsEntry :: { "Value" :: String, "Key" :: String } -> TagsEntry
tagsEntry required =
  required