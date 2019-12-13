module CloudFormation.AWS.S3.AccessPoint where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::S3::AccessPoint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-name
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-bucket
-- | - `VpcConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-vpcconfiguration
-- | - `PublicAccessBlockConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-publicaccessblockconfiguration
-- | - `Policy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-policy
-- | - `PolicyStatus`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-policystatus
-- | - `NetworkOrigin`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-networkorigin
-- | - `CreationDate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-creationdate
newtype AccessPoint = AccessPoint
  { "Bucket" :: Value String
  , "Name" :: Maybe (Value String)
  , "VpcConfiguration" :: Maybe (Value VpcConfiguration)
  , "PublicAccessBlockConfiguration" :: Maybe (Value PublicAccessBlockConfiguration)
  , "Policy" :: Maybe (Value CF.Json)
  , "PolicyStatus" :: Maybe (Value CF.Json)
  , "NetworkOrigin" :: Maybe (Value String)
  , "CreationDate" :: Maybe (Value String)
  }

derive instance newtypeAccessPoint :: Newtype AccessPoint _
derive newtype instance writeAccessPoint :: WriteForeign AccessPoint
instance resourceAccessPoint :: Resource AccessPoint where type_ _ = "AWS::S3::AccessPoint"

accessPoint :: { "Bucket" :: Value String } -> AccessPoint
accessPoint required = AccessPoint
  (merge required
    { "Name" : Nothing
    , "VpcConfiguration" : Nothing
    , "PublicAccessBlockConfiguration" : Nothing
    , "Policy" : Nothing
    , "PolicyStatus" : Nothing
    , "NetworkOrigin" : Nothing
    , "CreationDate" : Nothing
    })

-- | `AWS::S3::AccessPoint.VpcConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-vpcconfiguration.html
-- |
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-vpcconfiguration.html#cfn-s3-accesspoint-vpcconfiguration-vpcid
type VpcConfiguration =
  { "VpcId" :: Maybe (Value String)
  }

vpcConfiguration :: VpcConfiguration
vpcConfiguration =
  { "VpcId" : Nothing
  }

-- | `AWS::S3::AccessPoint.PublicAccessBlockConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-publicaccessblockconfiguration.html
-- |
-- | - `BlockPublicAcls`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-publicaccessblockconfiguration.html#cfn-s3-accesspoint-publicaccessblockconfiguration-blockpublicacls
-- | - `IgnorePublicAcls`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-publicaccessblockconfiguration.html#cfn-s3-accesspoint-publicaccessblockconfiguration-ignorepublicacls
-- | - `BlockPublicPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-publicaccessblockconfiguration.html#cfn-s3-accesspoint-publicaccessblockconfiguration-blockpublicpolicy
-- | - `RestrictPublicBuckets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accesspoint-publicaccessblockconfiguration.html#cfn-s3-accesspoint-publicaccessblockconfiguration-restrictpublicbuckets
type PublicAccessBlockConfiguration =
  { "BlockPublicAcls" :: Maybe (Value Boolean)
  , "IgnorePublicAcls" :: Maybe (Value Boolean)
  , "BlockPublicPolicy" :: Maybe (Value Boolean)
  , "RestrictPublicBuckets" :: Maybe (Value Boolean)
  }

publicAccessBlockConfiguration :: PublicAccessBlockConfiguration
publicAccessBlockConfiguration =
  { "BlockPublicAcls" : Nothing
  , "IgnorePublicAcls" : Nothing
  , "BlockPublicPolicy" : Nothing
  , "RestrictPublicBuckets" : Nothing
  }