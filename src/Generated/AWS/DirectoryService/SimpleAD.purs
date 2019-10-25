module CloudFormation.AWS.DirectoryService.SimpleAD where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Name" :: Value String
  , "Password" :: Value String
  , "Size" :: Value String
  , "VpcSettings" :: Value VpcSettings
  , "CreateAlias" :: Maybe (Value Boolean)
  , "Description" :: Maybe (Value String)
  , "EnableSso" :: Maybe (Value Boolean)
  , "ShortName" :: Maybe (Value String)
  }

derive instance newtypeSimpleAD :: Newtype SimpleAD _
derive newtype instance writeSimpleAD :: WriteForeign SimpleAD
instance resourceSimpleAD :: Resource SimpleAD where type_ _ = "AWS::DirectoryService::SimpleAD"

simpleAD :: { "Name" :: Value String, "Password" :: Value String, "Size" :: Value String, "VpcSettings" :: Value VpcSettings } -> SimpleAD
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
  { "SubnetIds" :: Value (Array String)
  , "VpcId" :: Value String
  }

vpcSettings :: { "SubnetIds" :: Value (Array String), "VpcId" :: Value String } -> VpcSettings
vpcSettings required =
  required