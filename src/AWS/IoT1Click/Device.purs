module AWS.IoT1Click.Device where 




type Device =
  { "DeviceId" :: String
  , "Enabled" :: Boolean
  }

device :: { "DeviceId" :: String, "Enabled" :: Boolean } -> Device
device required =
  required