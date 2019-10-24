module CloudFormation.AWS.MediaLive.Input where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)


-- | `AWS::MediaLive::Input`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-type
-- | - `Destinations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-destinations
-- | - `Vpc`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-vpc
-- | - `MediaConnectFlows`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-mediaconnectflows
-- | - `InputSecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-inputsecuritygroups
-- | - `Sources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-sources
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-rolearn
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-name
type Input =
  { "Type" :: Maybe String
  , "Destinations" :: Maybe (Array InputDestinationRequest)
  , "Vpc" :: Maybe InputVpcRequest
  , "MediaConnectFlows" :: Maybe (Array MediaConnectFlowRequest)
  , "InputSecurityGroups" :: Maybe (Array String)
  , "Sources" :: Maybe (Array InputSourceRequest)
  , "RoleArn" :: Maybe String
  , "Tags" :: Maybe Json
  , "Name" :: Maybe String
  }

input :: Input
input =
  { "Type" : Nothing
  , "Destinations" : Nothing
  , "Vpc" : Nothing
  , "MediaConnectFlows" : Nothing
  , "InputSecurityGroups" : Nothing
  , "Sources" : Nothing
  , "RoleArn" : Nothing
  , "Tags" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::MediaLive::Input.MediaConnectFlowRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-mediaconnectflowrequest.html
-- |
-- | - `FlowArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-mediaconnectflowrequest.html#cfn-medialive-input-mediaconnectflowrequest-flowarn
type MediaConnectFlowRequest =
  { "FlowArn" :: Maybe String
  }

mediaConnectFlowRequest :: MediaConnectFlowRequest
mediaConnectFlowRequest =
  { "FlowArn" : Nothing
  }

-- | `AWS::MediaLive::Input.InputDestinationRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdestinationrequest.html
-- |
-- | - `StreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputdestinationrequest.html#cfn-medialive-input-inputdestinationrequest-streamname
type InputDestinationRequest =
  { "StreamName" :: Maybe String
  }

inputDestinationRequest :: InputDestinationRequest
inputDestinationRequest =
  { "StreamName" : Nothing
  }

-- | `AWS::MediaLive::Input.InputSourceRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsourcerequest.html
-- |
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsourcerequest.html#cfn-medialive-input-inputsourcerequest-username
-- | - `PasswordParam`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsourcerequest.html#cfn-medialive-input-inputsourcerequest-passwordparam
-- | - `Url`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsourcerequest.html#cfn-medialive-input-inputsourcerequest-url
type InputSourceRequest =
  { "Username" :: Maybe String
  , "PasswordParam" :: Maybe String
  , "Url" :: Maybe String
  }

inputSourceRequest :: InputSourceRequest
inputSourceRequest =
  { "Username" : Nothing
  , "PasswordParam" : Nothing
  , "Url" : Nothing
  }

-- | `AWS::MediaLive::Input.InputVpcRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html
-- |
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html#cfn-medialive-input-inputvpcrequest-securitygroupids
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html#cfn-medialive-input-inputvpcrequest-subnetids
type InputVpcRequest =
  { "SecurityGroupIds" :: Maybe (Array String)
  , "SubnetIds" :: Maybe (Array String)
  }

inputVpcRequest :: InputVpcRequest
inputVpcRequest =
  { "SecurityGroupIds" : Nothing
  , "SubnetIds" : Nothing
  }