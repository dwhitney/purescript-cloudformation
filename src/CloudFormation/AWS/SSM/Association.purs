module CloudFormation.AWS.SSM.Association where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import Record (merge)


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

type ParameterValues =
  { "ParameterValues" :: Array String
  }

parameterValues :: { "ParameterValues" :: Array String } -> ParameterValues
parameterValues required =
  required

type Target =
  { "Key" :: String
  , "Values" :: Array String
  }

target :: { "Key" :: String, "Values" :: Array String } -> Target
target required =
  required

type InstanceAssociationOutputLocation =
  { "S3Location" :: Maybe S3OutputLocation
  }

instanceAssociationOutputLocation :: InstanceAssociationOutputLocation
instanceAssociationOutputLocation =
  { "S3Location" : Nothing
  }

type S3OutputLocation =
  { "OutputS3BucketName" :: Maybe String
  , "OutputS3KeyPrefix" :: Maybe String
  }

s3OutputLocation :: S3OutputLocation
s3OutputLocation =
  { "OutputS3BucketName" : Nothing
  , "OutputS3KeyPrefix" : Nothing
  }