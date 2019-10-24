module AST.Attribute where

import AST.Property (ContainerType, Primitive)

data Attribute 
  = PrimitiveItemType { name :: String, primitive :: Primitive,  containerType :: ContainerType }
  | PrimitiveType     { name :: String, primitive :: Primitive }
  | ItemType          { name :: String, type :: String        , containerType :: ContainerType }
  | Type              { name :: String, type :: String }

