module CloudFormation.AWS.Lambda.LayerVersionPermission where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Lambda::LayerVersionPermission`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-action
-- | - `LayerVersionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-layerversionarn
-- | - `OrganizationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-organizationid
-- | - `Principal`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversionpermission.html#cfn-lambda-layerversionpermission-principal
type LayerVersionPermission =
  { "Action" :: String
  , "LayerVersionArn" :: String
  , "Principal" :: String
  , "OrganizationId" :: Maybe String
  }

layerVersionPermission :: { "Action" :: String, "LayerVersionArn" :: String, "Principal" :: String } -> LayerVersionPermission
layerVersionPermission required =
  merge required
    { "OrganizationId" : Nothing
    }