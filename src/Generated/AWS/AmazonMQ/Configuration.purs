module CloudFormation.AWS.AmazonMQ.Configuration where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "EngineVersion" :: Value String
  , "EngineType" :: Value String
  , "Data" :: Value String
  , "Name" :: Value String
  , "Description" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array TagsEntry))
  }

derive instance newtypeConfiguration :: Newtype Configuration _
derive newtype instance writeConfiguration :: WriteForeign Configuration
instance resourceConfiguration :: Resource Configuration where type_ _ = "AWS::AmazonMQ::Configuration"

configuration :: { "EngineVersion" :: Value String, "EngineType" :: Value String, "Data" :: Value String, "Name" :: Value String } -> Configuration
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
  { "Value" :: Value String
  , "Key" :: Value String
  }

tagsEntry :: { "Value" :: Value String, "Key" :: Value String } -> TagsEntry
tagsEntry required =
  required