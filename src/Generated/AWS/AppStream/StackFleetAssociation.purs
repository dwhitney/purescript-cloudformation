module CloudFormation.AWS.AppStream.StackFleetAssociation where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AppStream::StackFleetAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html
-- |
-- | - `FleetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html#cfn-appstream-stackfleetassociation-fleetname
-- | - `StackName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html#cfn-appstream-stackfleetassociation-stackname
newtype StackFleetAssociation = StackFleetAssociation
  { "FleetName" :: Value String
  , "StackName" :: Value String
  }

derive instance newtypeStackFleetAssociation :: Newtype StackFleetAssociation _
derive newtype instance writeStackFleetAssociation :: WriteForeign StackFleetAssociation
instance resourceStackFleetAssociation :: Resource StackFleetAssociation where type_ _ = "AWS::AppStream::StackFleetAssociation"

stackFleetAssociation :: { "FleetName" :: Value String, "StackName" :: Value String } -> StackFleetAssociation
stackFleetAssociation required = StackFleetAssociation
  required