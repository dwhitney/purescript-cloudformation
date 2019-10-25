module CloudFormation.AWS.RAM.ResourceShare where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::RAM::ResourceShare`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ram-resourceshare.html
-- |
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
newtype ResourceShare = ResourceShare
  { "Name" :: Value String
  , "Principals" :: Maybe (Value (Array String))
  , "AllowExternalPrincipals" :: Maybe (Value Boolean)
  , "ResourceArns" :: Maybe (Value (Array String))
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeResourceShare :: Newtype ResourceShare _
derive newtype instance writeResourceShare :: WriteForeign ResourceShare
instance resourceResourceShare :: Resource ResourceShare where type_ _ = "AWS::RAM::ResourceShare"

resourceShare :: { "Name" :: Value String } -> ResourceShare
resourceShare required = ResourceShare
  (merge required
    { "Principals" : Nothing
    , "AllowExternalPrincipals" : Nothing
    , "ResourceArns" : Nothing
    , "Tags" : Nothing
    })