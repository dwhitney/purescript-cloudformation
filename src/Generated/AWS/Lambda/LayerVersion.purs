module CloudFormation.AWS.Lambda.LayerVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


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
type LayerVersion =
  { "Content" :: Content
  , "CompatibleRuntimes" :: Maybe (Array String)
  , "LicenseInfo" :: Maybe String
  , "Description" :: Maybe String
  , "LayerName" :: Maybe String
  }

layerVersion :: { "Content" :: Content } -> LayerVersion
layerVersion required =
  merge required
    { "CompatibleRuntimes" : Nothing
    , "LicenseInfo" : Nothing
    , "Description" : Nothing
    , "LayerName" : Nothing
    }

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
  { "S3Bucket" :: String
  , "S3Key" :: String
  , "S3ObjectVersion" :: Maybe String
  }

content :: { "S3Bucket" :: String, "S3Key" :: String } -> Content
content required =
  merge required
    { "S3ObjectVersion" : Nothing
    }