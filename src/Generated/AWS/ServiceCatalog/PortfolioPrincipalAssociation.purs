module CloudFormation.AWS.ServiceCatalog.PortfolioPrincipalAssociation where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ServiceCatalog::PortfolioPrincipalAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html
-- |
-- | - `PrincipalARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-principalarn
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-portfolioid
-- | - `PrincipalType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-principaltype
newtype PortfolioPrincipalAssociation = PortfolioPrincipalAssociation
  { "PrincipalARN" :: String
  , "PortfolioId" :: String
  , "PrincipalType" :: String
  , "AcceptLanguage" :: Maybe String
  }

derive instance newtypePortfolioPrincipalAssociation :: Newtype PortfolioPrincipalAssociation _
instance resourcePortfolioPrincipalAssociation :: Resource PortfolioPrincipalAssociation where type_ _ = "AWS::ServiceCatalog::PortfolioPrincipalAssociation"

portfolioPrincipalAssociation :: { "PrincipalARN" :: String, "PortfolioId" :: String, "PrincipalType" :: String } -> PortfolioPrincipalAssociation
portfolioPrincipalAssociation required = PortfolioPrincipalAssociation
  (merge required
    { "AcceptLanguage" : Nothing
    })