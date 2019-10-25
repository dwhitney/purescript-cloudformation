module CloudFormation.AWS.ServiceCatalog.LaunchRoleConstraint where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ServiceCatalog::LaunchRoleConstraint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-description
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-portfolioid
-- | - `ProductId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-productid
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-rolearn
newtype LaunchRoleConstraint = LaunchRoleConstraint
  { "PortfolioId" :: Value String
  , "ProductId" :: Value String
  , "RoleArn" :: Value String
  , "Description" :: Maybe (Value String)
  , "AcceptLanguage" :: Maybe (Value String)
  }

derive instance newtypeLaunchRoleConstraint :: Newtype LaunchRoleConstraint _
derive newtype instance writeLaunchRoleConstraint :: WriteForeign LaunchRoleConstraint
instance resourceLaunchRoleConstraint :: Resource LaunchRoleConstraint where type_ _ = "AWS::ServiceCatalog::LaunchRoleConstraint"

launchRoleConstraint :: { "PortfolioId" :: Value String, "ProductId" :: Value String, "RoleArn" :: Value String } -> LaunchRoleConstraint
launchRoleConstraint required = LaunchRoleConstraint
  (merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    })