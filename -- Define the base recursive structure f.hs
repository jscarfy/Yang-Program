-- Define the base recursive structure for meta
inductive meta : Type
| base : meta
| recurse : meta → meta