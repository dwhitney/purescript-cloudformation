module CloudFormation.AWS.AppStream.StackFleetAssociation where 




type StackFleetAssociation =
  { "FleetName" :: String
  , "StackName" :: String
  }

stackFleetAssociation :: { "FleetName" :: String, "StackName" :: String } -> StackFleetAssociation
stackFleetAssociation required =
  required