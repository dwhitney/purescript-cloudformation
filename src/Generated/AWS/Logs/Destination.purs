module CloudFormation.AWS.Logs.Destination where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Logs::Destination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html
-- |
-- | - `DestinationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-destinationname
-- | - `DestinationPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-destinationpolicy
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-rolearn
-- | - `TargetArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-destination.html#cfn-logs-destination-targetarn
newtype Destination = Destination
  { "DestinationName" :: Value String
  , "DestinationPolicy" :: Value String
  , "RoleArn" :: Value String
  , "TargetArn" :: Value String
  }

derive instance newtypeDestination :: Newtype Destination _
derive newtype instance writeDestination :: WriteForeign Destination
instance resourceDestination :: Resource Destination where type_ _ = "AWS::Logs::Destination"

destination :: { "DestinationName" :: Value String, "DestinationPolicy" :: Value String, "RoleArn" :: Value String, "TargetArn" :: Value String } -> Destination
destination required = Destination
  required