module CloudFormation.AWS.ServiceCatalog.PortfolioProductAssociation where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ServiceCatalog::PortfolioProductAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html
-- |
-- | - `SourcePortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-sourceportfolioid
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-portfolioid
-- | - `ProductId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-productid
type PortfolioProductAssociation =
  { "PortfolioId" :: String
  , "ProductId" :: String
  , "SourcePortfolioId" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

portfolioProductAssociation :: { "PortfolioId" :: String, "ProductId" :: String } -> PortfolioProductAssociation
portfolioProductAssociation required =
  merge required
    { "SourcePortfolioId" : Nothing
    , "AcceptLanguage" : Nothing
    }