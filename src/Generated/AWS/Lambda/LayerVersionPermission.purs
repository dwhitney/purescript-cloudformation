module CloudFormation.AWS.Lambda.LayerVersionPermission where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "Action" :: String
  , "LayerVersionArn" :: String
  , "Principal" :: String
  , "OrganizationId" :: Maybe String
  }

derive instance newtypeLayerVersionPermission :: Newtype LayerVersionPermission _
instance resourceLayerVersionPermission :: Resource LayerVersionPermission where type_ _ = "AWS::Lambda::LayerVersionPermission"

layerVersionPermission :: { "Action" :: String, "LayerVersionArn" :: String, "Principal" :: String } -> LayerVersionPermission
layerVersionPermission required = LayerVersionPermission
  (merge required
    { "OrganizationId" : Nothing
    })