module CloudFormation.AWS.EC2.VolumeAttachment where 




type VolumeAttachment =
  { "Device" :: String
  , "InstanceId" :: String
  , "VolumeId" :: String
  }

volumeAttachment :: { "Device" :: String, "InstanceId" :: String, "VolumeId" :: String } -> VolumeAttachment
volumeAttachment required =
  required