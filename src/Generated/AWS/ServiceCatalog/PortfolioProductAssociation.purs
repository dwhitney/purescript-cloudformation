module CloudFormation.AWS.ServiceCatalog.PortfolioProductAssociation where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype PortfolioProductAssociation = PortfolioProductAssociation
  { "PortfolioId" :: String
  , "ProductId" :: String
  , "SourcePortfolioId" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

derive instance newtypePortfolioProductAssociation :: Newtype PortfolioProductAssociation _
instance resourcePortfolioProductAssociation :: Resource PortfolioProductAssociation where type_ _ = "AWS::ServiceCatalog::PortfolioProductAssociation"

portfolioProductAssociation :: { "PortfolioId" :: String, "ProductId" :: String } -> PortfolioProductAssociation
portfolioProductAssociation required = PortfolioProductAssociation
  (merge required
    { "SourcePortfolioId" : Nothing
    , "AcceptLanguage" : Nothing
    })