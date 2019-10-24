module CloudFormation.AWS.RAM.ResourceShare where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::RAM::ResourceShare`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html-- |
-- | - `Principals`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html#cfn-ram-resourceshare-principals
-- | - `AllowExternalPrincipals`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html#cfn-ram-resourceshare-allowexternalprincipals
-- | - `ResourceArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html#cfn-ram-resourceshare-resourcearns
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html#cfn-ram-resourceshare-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html#cfn-ram-resourceshare-name
type ResourceShare =
  { "Name" :: String
  , "Principals" :: Maybe (Array String)
  , "AllowExternalPrincipals" :: Maybe Boolean
  , "ResourceArns" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  }

resourceShare :: { "Name" :: String } -> ResourceShare
resourceShare required =
  merge required
    { "Principals" : Nothing
    , "AllowExternalPrincipals" : Nothing
    , "ResourceArns" : Nothing
    , "Tags" : Nothing
    }