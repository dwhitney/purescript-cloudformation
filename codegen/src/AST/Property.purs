module AST.Property where

data Primitive = B | S | L | I | D | T | J
data UpdateType = Mutable | Immutable | Conditional | Unknown
data ContainerType = List | Map

data Property
  = PrimitiveItemType { name :: String, documentation :: String, required :: Boolean, primitive :: Primitive, containerType :: ContainerType, updateType :: UpdateType, duplicatesAllowed :: Boolean }
  | PrimitiveType     { name :: String, documentation :: String, required :: Boolean, primitive :: Primitive }
  | ItemType          { name :: String, documentation :: String, required :: Boolean, type :: String, containerType :: ContainerType, updateType :: UpdateType, duplicatesAllowed :: Boolean }
  | Type              { name :: String, documentation :: String, required :: Boolean, type :: String }