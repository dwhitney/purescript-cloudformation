module CloudFormation.AWS.Lambda.LayerVersionPermission where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Lambda::LayerVersionPermission`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html
-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-action
-- | - `LayerVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-layerversionarn
-- | - `OrganizationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-organizationid
-- | - `Principal`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-principal
newtype LayerVersionPermission = LayerVersionPermission
  { "Action" :: Value String
  , "LayerVersionArn" :: Value String
  , "Principal" :: Value String
  , "OrganizationId" :: Maybe (Value String)
  }

derive instance newtypeLayerVersionPermission :: Newtype LayerVersionPermission _
derive newtype instance writeLayerVersionPermission :: WriteForeign LayerVersionPermission
instance resourceLayerVersionPermission :: Resource LayerVersionPermission where type_ _ = "AWS::Lambda::LayerVersionPermission"

layerVersionPermission :: { "Action" :: Value String, "LayerVersionArn" :: Value String, "Principal" :: Value String } -> LayerVersionPermission
layerVersionPermission required = LayerVersionPermission
  (merge required
    { "OrganizationId" : Nothing
    })