module AWS.IoT.PolicyPrincipalAttachment where 




type PolicyPrincipalAttachment =
  { "PolicyName" :: String
  , "Principal" :: String
  }

policyPrincipalAttachment :: { "PolicyName" :: String, "Principal" :: String } -> PolicyPrincipalAttachment
policyPrincipalAttachment required =
  required