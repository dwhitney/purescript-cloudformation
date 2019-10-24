module AWS.IoT.ThingPrincipalAttachment where 




type ThingPrincipalAttachment =
  { "Principal" :: String
  , "ThingName" :: String
  }

thingPrincipalAttachment :: { "Principal" :: String, "ThingName" :: String } -> ThingPrincipalAttachment
thingPrincipalAttachment required =
  required