module CloudFormation.AWS.SSM.Association where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import Record (merge)


-- | `AWS::SSM::Association`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html
-- |
-- | - `AssociationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-associationname
-- | - `DocumentVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-documentversion
-- | - `InstanceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-instanceid
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-name
-- | - `OutputLocation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-outputlocation
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-parameters
-- | - `ScheduleExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-scheduleexpression
-- | - `Targets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-association.html#cfn-ssm-association-targets
type Association =
  { "Name" :: String
  , "AssociationName" :: Maybe String
  , "DocumentVersion" :: Maybe String
  , "InstanceId" :: Maybe String
  , "OutputLocation" :: Maybe InstanceAssociationOutputLocation
  , "Parameters" :: Maybe (Object ParameterValues)
  , "ScheduleExpression" :: Maybe String
  , "Targets" :: Maybe (Array Target)
  }

association :: { "Name" :: String } -> Association
association required =
  merge required
    { "AssociationName" : Nothing
    , "DocumentVersion" : Nothing
    , "InstanceId" : Nothing
    , "OutputLocation" : Nothing
    , "Parameters" : Nothing
    , "ScheduleExpression" : Nothing
    , "Targets" : Nothing
    }

-- | `AWS::SSM::Association.ParameterValues`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html
-- |
-- | - `ParameterValues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html#cfn-ssm-association-parametervalues-parametervalues
type ParameterValues =
  { "ParameterValues" :: Array String
  }

parameterValues :: { "ParameterValues" :: Array String } -> ParameterValues
parameterValues required =
  required

-- | `AWS::SSM::Association.Target`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html#cfn-ssm-association-target-key
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html#cfn-ssm-association-target-values
type Target =
  { "Key" :: String
  , "Values" :: Array String
  }

target :: { "Key" :: String, "Values" :: Array String } -> Target
target required =
  required

-- | `AWS::SSM::Association.InstanceAssociationOutputLocation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html
-- |
-- | - `S3Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html#cfn-ssm-association-instanceassociationoutputlocation-s3location
type InstanceAssociationOutputLocation =
  { "S3Location" :: Maybe S3OutputLocation
  }

instanceAssociationOutputLocation :: InstanceAssociationOutputLocation
instanceAssociationOutputLocation =
  { "S3Location" : Nothing
  }

-- | `AWS::SSM::Association.S3OutputLocation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-s3outputlocation.html
-- |
-- | - `OutputS3BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-s3outputlocation.html#cfn-ssm-association-s3outputlocation-outputs3bucketname
-- | - `OutputS3KeyPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-s3outputlocation.html#cfn-ssm-association-s3outputlocation-outputs3keyprefix
type S3OutputLocation =
  { "OutputS3BucketName" :: Maybe String
  , "OutputS3KeyPrefix" :: Maybe String
  }

s3OutputLocation :: S3OutputLocation
s3OutputLocation =
  { "OutputS3BucketName" : Nothing
  , "OutputS3KeyPrefix" : Nothing
  }