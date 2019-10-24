module CloudFormation.AWS.Logs.Destination where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "DestinationName" :: String
  , "DestinationPolicy" :: String
  , "RoleArn" :: String
  , "TargetArn" :: String
  }

derive instance newtypeDestination :: Newtype Destination _
instance resourceDestination :: Resource Destination where type_ _ = "AWS::Logs::Destination"

destination :: { "DestinationName" :: String, "DestinationPolicy" :: String, "RoleArn" :: String, "TargetArn" :: String } -> Destination
destination required = Destination
  required