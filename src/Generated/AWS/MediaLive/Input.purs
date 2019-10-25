module CloudFormation.AWS.MediaLive.Input where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype Input = Input
  { "Type" :: Maybe (Value String)
  , "Destinations" :: Maybe (Value (Array InputDestinationRequest))
  , "Vpc" :: Maybe (Value InputVpcRequest)
  , "MediaConnectFlows" :: Maybe (Value (Array MediaConnectFlowRequest))
  , "InputSecurityGroups" :: Maybe (Value (Array String))
  , "Sources" :: Maybe (Value (Array InputSourceRequest))
  , "RoleArn" :: Maybe (Value String)
  , "Tags" :: Maybe (Value CF.Json)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeInput :: Newtype Input _
derive newtype instance writeInput :: WriteForeign Input
instance resourceInput :: Resource Input where type_ _ = "AWS::MediaLive::Input"

input :: Input
input = Input
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
  { "FlowArn" :: Maybe (Value String)
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
  { "StreamName" :: Maybe (Value String)
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
  { "Username" :: Maybe (Value String)
  , "PasswordParam" :: Maybe (Value String)
  , "Url" :: Maybe (Value String)
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
  { "SecurityGroupIds" :: Maybe (Value (Array String))
  , "SubnetIds" :: Maybe (Value (Array String))
  }

inputVpcRequest :: InputVpcRequest
inputVpcRequest =
  { "SecurityGroupIds" : Nothing
  , "SubnetIds" : Nothing
  }