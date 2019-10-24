module CloudFormation.AWS.ServiceCatalog.LaunchTemplateConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ServiceCatalog::LaunchTemplateConstraint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-description
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-portfolioid
-- | - `ProductId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-productid
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-rules
newtype LaunchTemplateConstraint = LaunchTemplateConstraint
  { "PortfolioId" :: String
  , "ProductId" :: String
  , "Rules" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

derive instance newtypeLaunchTemplateConstraint :: Newtype LaunchTemplateConstraint _
instance resourceLaunchTemplateConstraint :: Resource LaunchTemplateConstraint where type_ _ = "AWS::ServiceCatalog::LaunchTemplateConstraint"

launchTemplateConstraint :: { "PortfolioId" :: String, "ProductId" :: String, "Rules" :: String } -> LaunchTemplateConstraint
launchTemplateConstraint required = LaunchTemplateConstraint
  (merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    })