import Lake
open Lake DSL

package «NavierStokes» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

@[default_target]
lean_lib «NavierStokes» where
  srcDir := "."
