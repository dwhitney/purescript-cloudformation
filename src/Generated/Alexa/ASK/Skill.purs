module CloudFormation.Alexa.ASK.Skill where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "AuthenticationConfiguration" :: Value AuthenticationConfiguration
  , "VendorId" :: Value String
  , "SkillPackage" :: Value SkillPackage
  }

derive instance newtypeSkill :: Newtype Skill _
derive newtype instance writeSkill :: WriteForeign Skill
instance resourceSkill :: Resource Skill where type_ _ = "Alexa::ASK::Skill"

skill :: { "AuthenticationConfiguration" :: Value AuthenticationConfiguration, "VendorId" :: Value String, "SkillPackage" :: Value SkillPackage } -> Skill
skill required = Skill
  required

-- | `Alexa::ASK::Skill.Overrides`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-overrides.html
-- |
-- | - `Manifest`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-overrides.html#cfn-ask-skill-overrides-manifest
type Overrides =
  { "Manifest" :: Maybe (Value CF.Json)
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
  { "RefreshToken" :: Value String
  , "ClientSecret" :: Value String
  , "ClientId" :: Value String
  }

authenticationConfiguration :: { "RefreshToken" :: Value String, "ClientSecret" :: Value String, "ClientId" :: Value String } -> AuthenticationConfiguration
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
  { "S3Bucket" :: Value String
  , "S3Key" :: Value String
  , "S3BucketRole" :: Maybe (Value String)
  , "S3ObjectVersion" :: Maybe (Value String)
  , "Overrides" :: Maybe (Value Overrides)
  }

skillPackage :: { "S3Bucket" :: Value String, "S3Key" :: Value String } -> SkillPackage
skillPackage required =
  (merge required
    { "S3BucketRole" : Nothing
    , "S3ObjectVersion" : Nothing
    , "Overrides" : Nothing
    })