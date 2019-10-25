module CloudFormation.Tag where 

import CloudFormation (Value)


-- | `Tag`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html#cfn-resource-tags-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html#cfn-resource-tags-value
type Tag =
  { "Key" :: Value String
  , "Value" :: Value String
  }

tag :: { "Key" :: Value String, "Value" :: Value String } -> Tag
tag required =
  required