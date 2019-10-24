module CloudFormation.AWS.ServiceCatalog.ResourceUpdateConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ServiceCatalog::ResourceUpdateConstraint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-description
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-acceptlanguage
-- | - `TagUpdateOnProvisionedProduct`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-tagupdateonprovisionedproduct
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-portfolioid
-- | - `ProductId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-productid
type ResourceUpdateConstraint =
  { "TagUpdateOnProvisionedProduct" :: String
  , "PortfolioId" :: String
  , "ProductId" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

resourceUpdateConstraint :: { "TagUpdateOnProvisionedProduct" :: String, "PortfolioId" :: String, "ProductId" :: String } -> ResourceUpdateConstraint
resourceUpdateConstraint required =
  merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    }