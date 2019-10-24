module CloudFormation.Alexa.ASK.Skill where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `Alexa::ASK::Skill`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ask-skill.html
-- |
-- | - `AuthenticationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ask-skill.html#cfn-ask-skill-authenticationconfiguration
-- | - `VendorId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ask-skill.html#cfn-ask-skill-vendorid
-- | - `SkillPackage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ask-skill.html#cfn-ask-skill-skillpackage
newtype Skill = Skill
  { "AuthenticationConfiguration" :: AuthenticationConfiguration
  , "VendorId" :: String
  , "SkillPackage" :: SkillPackage
  }

derive instance newtypeSkill :: Newtype Skill _
instance resourceSkill :: Resource Skill where type_ _ = "Alexa::ASK::Skill"

skill :: { "AuthenticationConfiguration" :: AuthenticationConfiguration, "VendorId" :: String, "SkillPackage" :: SkillPackage } -> Skill
skill required = Skill
  required

-- | `Alexa::ASK::Skill.Overrides`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-overrides.html
-- |
-- | - `Manifest`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-overrides.html#cfn-ask-skill-overrides-manifest
type Overrides =
  { "Manifest" :: Maybe CF.Json
  }

overrides :: Overrides
overrides =
  { "Manifest" : Nothing
  }

-- | `Alexa::ASK::Skill.AuthenticationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html
-- |
-- | - `RefreshToken`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html#cfn-ask-skill-authenticationconfiguration-refreshtoken
-- | - `ClientSecret`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html#cfn-ask-skill-authenticationconfiguration-clientsecret
-- | - `ClientId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-authenticationconfiguration.html#cfn-ask-skill-authenticationconfiguration-clientid
type AuthenticationConfiguration =
  { "RefreshToken" :: String
  , "ClientSecret" :: String
  , "ClientId" :: String
  }

authenticationConfiguration :: { "RefreshToken" :: String, "ClientSecret" :: String, "ClientId" :: String } -> AuthenticationConfiguration
authenticationConfiguration required =
  required

-- | `Alexa::ASK::Skill.SkillPackage`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html
-- |
-- | - `S3BucketRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3bucketrole
-- | - `S3ObjectVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3objectversion
-- | - `S3Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3bucket
-- | - `S3Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3key
-- | - `Overrides`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-overrides
type SkillPackage =
  { "S3Bucket" :: String
  , "S3Key" :: String
  , "S3BucketRole" :: Maybe String
  , "S3ObjectVersion" :: Maybe String
  , "Overrides" :: Maybe Overrides
  }

skillPackage :: { "S3Bucket" :: String, "S3Key" :: String } -> SkillPackage
skillPackage required =
  (merge required
    { "S3BucketRole" : Nothing
    , "S3ObjectVersion" : Nothing
    , "Overrides" : Nothing
    })