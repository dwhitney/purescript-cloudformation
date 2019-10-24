module CloudFormation.AWS.Glue.DevEndpoint where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


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
type DevEndpoint =
  { "RoleArn" :: String
  , "ExtraJarsS3Path" :: Maybe String
  , "PublicKey" :: Maybe String
  , "NumberOfNodes" :: Maybe Int
  , "Arguments" :: Maybe Foreign
  , "SubnetId" :: Maybe String
  , "SecurityGroupIds" :: Maybe (Array String)
  , "WorkerType" :: Maybe String
  , "EndpointName" :: Maybe String
  , "GlueVersion" :: Maybe String
  , "ExtraPythonLibsS3Path" :: Maybe String
  , "SecurityConfiguration" :: Maybe String
  , "NumberOfWorkers" :: Maybe Int
  , "Tags" :: Maybe Foreign
  }

devEndpoint :: { "RoleArn" :: String } -> DevEndpoint
devEndpoint required =
  merge required
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
    }