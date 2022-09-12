(* Type of tree *)
type 'a tree = 
  | Leaf
  | Node of 'a * 'a tree * 'a tree

(* [find e t] returns true if tree [t] contains [e]  *)
val find : 'a -> 'a tree -> bool

(* [depth t] returns the maximum depth of a leaf node in tree [t] *)
val depth : 'a tree -> int

(* [height t] returns the height of the root node of tree [t] *)
val height : 'a tree -> int

(* [is_same t1 t2] returns true if tree [t1] and [t2] are identicial *)
val is_same : 'a tree -> 'a tree -> bool

(* [inorder_traversal t] performs an inorder traversal of tree [t] and 
  arranges the values in a list *)
val inorder_traversal : 'a tree -> 'a list

(* [preorder_traversal t] performs an preorder traversal of tree [t] and 
  arranges the values in a list *)
val preorder_traversal : 'a tree -> 'a list

(* [postorder_traversal t] performs an postorder traversal of tree [t] and 
  arranges the values in a list *)
val postorder_traversal : 'a tree -> 'a list