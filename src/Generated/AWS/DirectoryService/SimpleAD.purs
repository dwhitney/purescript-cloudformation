module CloudFormation.AWS.DirectoryService.SimpleAD where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::DirectoryService::SimpleAD`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html
-- |
-- | - `CreateAlias`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-createalias
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-description
-- | - `EnableSso`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-enablesso
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-name
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-password
-- | - `ShortName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-shortname
-- | - `Size`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-size
-- | - `VpcSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-simplead.html#cfn-directoryservice-simplead-vpcsettings
newtype SimpleAD = SimpleAD
  { "Name" :: String
  , "Password" :: String
  , "Size" :: String
  , "VpcSettings" :: VpcSettings
  , "CreateAlias" :: Maybe Boolean
  , "Description" :: Maybe String
  , "EnableSso" :: Maybe Boolean
  , "ShortName" :: Maybe String
  }

derive instance newtypeSimpleAD :: Newtype SimpleAD _
instance resourceSimpleAD :: Resource SimpleAD where type_ _ = "AWS::DirectoryService::SimpleAD"

simpleAD :: { "Name" :: String, "Password" :: String, "Size" :: String, "VpcSettings" :: VpcSettings } -> SimpleAD
simpleAD required = SimpleAD
  (merge required
    { "CreateAlias" : Nothing
    , "Description" : Nothing
    , "EnableSso" : Nothing
    , "ShortName" : Nothing
    })

-- | `AWS::DirectoryService::SimpleAD.VpcSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html
-- |
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html#cfn-directoryservice-simplead-vpcsettings-subnetids
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html#cfn-directoryservice-simplead-vpcsettings-vpcid
type VpcSettings =
  { "SubnetIds" :: Array String
  , "VpcId" :: String
  }

vpcSettings :: { "SubnetIds" :: Array String, "VpcId" :: String } -> VpcSettings
vpcSettings required =
  required