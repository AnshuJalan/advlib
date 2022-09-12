type 'a tree = 
  | Leaf
  | Node of 'a * 'a tree * 'a tree

val find : 'a -> 'a tree -> bool

val depth : 'a tree -> int

val height : 'a tree -> int

val is_same : 'a tree -> 'a tree -> bool

val inorder_traversal : 'a tree -> 'a list

val preorder_traversal : 'a tree -> 'a list

val postorder_traversal : 'a tree -> 'a list