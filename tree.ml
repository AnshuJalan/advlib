type 'a tree = 
  | Leaf
  | Node of 'a * 'a tree * 'a tree

let rec find e = function
  | Leaf -> false
  | Node (v, l, r) -> (v = e) || find e l || find e r

let rec depth_aux = function
  | Leaf -> -1
  | Node (_, l, r) -> 1 + (max (depth_aux l) (depth_aux r))

let depth t = max 0 (depth_aux t)

let rec height = function
  | Leaf -> 0
  | Node (_, l, r) -> 1 + (max (height l) (height r))

let rec is_same t1 t2 = match t1, t2 with
  | Leaf, Leaf -> true
  | Node (v1, l1, r1), Node (v2, l2, r2) -> (v1 = v2) && (is_same l1 l2) && (is_same r1 r2)
  | _ -> false

let rec inorder_aux trav = function 
  | Leaf -> trav
  | Node (v, l, r) -> begin
      let left_trav = inorder_aux trav l in
        inorder_aux (v::left_trav) r
  end

let inorder_traversal t = List.rev (inorder_aux [] t)

let rec preorder_aux trav = function 
  | Leaf -> trav
  | Node (v, l, r) -> begin
      let left_trav = preorder_aux (v::trav) l in
        preorder_aux left_trav r
  end

let preorder_traversal t = List.rev (preorder_aux [] t)

let rec postorder_aux trav = function
  | Leaf -> trav
  | Node (v, l, r) -> begin
      let left_trav = postorder_aux trav l in
      let right_trav = postorder_aux left_trav r in
        v::right_trav
  end

let postorder_traversal t = List.rev (postorder_aux [] t)