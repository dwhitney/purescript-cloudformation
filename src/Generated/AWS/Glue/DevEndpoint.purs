module CloudFormation.AWS.Glue.DevEndpoint where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Glue::DevEndpoint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html
-- |
-- | - `ExtraJarsS3Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-extrajarss3path
-- | - `PublicKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-publickey
-- | - `NumberOfNodes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-numberofnodes
-- | - `Arguments`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-arguments
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-subnetid
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-securitygroupids
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-rolearn
-- | - `WorkerType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-workertype
-- | - `EndpointName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-endpointname
-- | - `GlueVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-glueversion
-- | - `ExtraPythonLibsS3Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-extrapythonlibss3path
-- | - `SecurityConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-securityconfiguration
-- | - `NumberOfWorkers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-numberofworkers
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-devendpoint.html#cfn-glue-devendpoint-tags
newtype DevEndpoint = DevEndpoint
  { "RoleArn" :: Value String
  , "ExtraJarsS3Path" :: Maybe (Value String)
  , "PublicKey" :: Maybe (Value String)
  , "NumberOfNodes" :: Maybe (Value Int)
  , "Arguments" :: Maybe (Value CF.Json)
  , "SubnetId" :: Maybe (Value String)
  , "SecurityGroupIds" :: Maybe (Value (Array String))
  , "WorkerType" :: Maybe (Value String)
  , "EndpointName" :: Maybe (Value String)
  , "GlueVersion" :: Maybe (Value String)
  , "ExtraPythonLibsS3Path" :: Maybe (Value String)
  , "SecurityConfiguration" :: Maybe (Value String)
  , "NumberOfWorkers" :: Maybe (Value Int)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeDevEndpoint :: Newtype DevEndpoint _
derive newtype instance writeDevEndpoint :: WriteForeign DevEndpoint
instance resourceDevEndpoint :: Resource DevEndpoint where type_ _ = "AWS::Glue::DevEndpoint"

devEndpoint :: { "RoleArn" :: Value String } -> DevEndpoint
devEndpoint required = DevEndpoint
  (merge required
    { "ExtraJarsS3Path" : Nothing
    , "PublicKey" : Nothing
    , "NumberOfNodes" : Nothing
    , "Arguments" : Nothing
    , "SubnetId" : Nothing
    , "SecurityGroupIds" : Nothing
    , "WorkerType" : Nothing
    , "EndpointName" : Nothing
    , "GlueVersion" : Nothing
    , "ExtraPythonLibsS3Path" : Nothing
    , "SecurityConfiguration" : Nothing
    , "NumberOfWorkers" : Nothing
    , "Tags" : Nothing
    })