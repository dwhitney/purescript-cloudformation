module CloudFormation.AWS.Lambda.LayerVersion where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Lambda::LayerVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html
-- |
-- | - `CompatibleRuntimes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-compatibleruntimes
-- | - `LicenseInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-licenseinfo
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-description
-- | - `LayerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-layername
-- | - `Content`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-content
newtype LayerVersion = LayerVersion
  { "Content" :: Value Content
  , "CompatibleRuntimes" :: Maybe (Value (Array String))
  , "LicenseInfo" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "LayerName" :: Maybe (Value String)
  }

derive instance newtypeLayerVersion :: Newtype LayerVersion _
derive newtype instance writeLayerVersion :: WriteForeign LayerVersion
instance resourceLayerVersion :: Resource LayerVersion where type_ _ = "AWS::Lambda::LayerVersion"

layerVersion :: { "Content" :: Value Content } -> LayerVersion
layerVersion required = LayerVersion
  (merge required
    { "CompatibleRuntimes" : Nothing
    , "LicenseInfo" : Nothing
    , "Description" : Nothing
    , "LayerName" : Nothing
    })

-- | `AWS::Lambda::LayerVersion.Content`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html
-- |
-- | - `S3ObjectVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html#cfn-lambda-layerversion-content-s3objectversion
-- | - `S3Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html#cfn-lambda-layerversion-content-s3bucket
-- | - `S3Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html#cfn-lambda-layerversion-content-s3key
type Content =
  { "S3Bucket" :: Value String
  , "S3Key" :: Value String
  , "S3ObjectVersion" :: Maybe (Value String)
  }

content :: { "S3Bucket" :: Value String, "S3Key" :: Value String } -> Content
content required =
  (merge required
    { "S3ObjectVersion" : Nothing
    })