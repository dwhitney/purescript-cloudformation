module CloudFormation.AWS.ServiceCatalog.LaunchTemplateConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)


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
type LaunchTemplateConstraint =
  { "PortfolioId" :: String
  , "ProductId" :: String
  , "Rules" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

launchTemplateConstraint :: { "PortfolioId" :: String, "ProductId" :: String, "Rules" :: String } -> LaunchTemplateConstraint
launchTemplateConstraint required =
  merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    }