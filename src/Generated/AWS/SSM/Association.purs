module CloudFormation.AWS.SSM.Association where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype Association = Association
  { "Name" :: Value String
  , "AssociationName" :: Maybe (Value String)
  , "DocumentVersion" :: Maybe (Value String)
  , "InstanceId" :: Maybe (Value String)
  , "OutputLocation" :: Maybe (Value InstanceAssociationOutputLocation)
  , "Parameters" :: Maybe (Value (Object ParameterValues))
  , "ScheduleExpression" :: Maybe (Value String)
  , "Targets" :: Maybe (Value (Array Target))
  }

derive instance newtypeAssociation :: Newtype Association _
derive newtype instance writeAssociation :: WriteForeign Association
instance resourceAssociation :: Resource Association where type_ _ = "AWS::SSM::Association"

association :: { "Name" :: Value String } -> Association
association required = Association
  (merge required
    { "AssociationName" : Nothing
    , "DocumentVersion" : Nothing
    , "InstanceId" : Nothing
    , "OutputLocation" : Nothing
    , "Parameters" : Nothing
    , "ScheduleExpression" : Nothing
    , "Targets" : Nothing
    })

-- | `AWS::SSM::Association.ParameterValues`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html
-- |
-- | - `ParameterValues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-parametervalues.html#cfn-ssm-association-parametervalues-parametervalues
type ParameterValues =
  { "ParameterValues" :: Value (Array String)
  }

parameterValues :: { "ParameterValues" :: Value (Array String) } -> ParameterValues
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
  { "Key" :: Value String
  , "Values" :: Value (Array String)
  }

target :: { "Key" :: Value String, "Values" :: Value (Array String) } -> Target
target required =
  required

-- | `AWS::SSM::Association.InstanceAssociationOutputLocation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html
-- |
-- | - `S3Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html#cfn-ssm-association-instanceassociationoutputlocation-s3location
type InstanceAssociationOutputLocation =
  { "S3Location" :: Maybe (Value S3OutputLocation)
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
  { "OutputS3BucketName" :: Maybe (Value String)
  , "OutputS3KeyPrefix" :: Maybe (Value String)
  }

s3OutputLocation :: S3OutputLocation
s3OutputLocation =
  { "OutputS3BucketName" : Nothing
  , "OutputS3KeyPrefix" : Nothing
  }