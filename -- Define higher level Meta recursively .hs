-- Define higher level Meta recursively containing meta
inductive Meta : Type
| base : Meta
| recurse : Meta → Meta

def Meta_limit : ℕ → Meta
| 0 := Meta.base
| (n + 1) := Meta.recurse (Meta_limit n)

def Meta_proj_limit : Meta := Meta_limit ∞