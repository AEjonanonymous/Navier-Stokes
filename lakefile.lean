import Lake
open Lake DSL

package «NavierStokes» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib «Challenge» where
  srcDir := "."

lean_lib «Solution» where
  srcDir := "."

@[default_target]
lean_lib «NavierStokes» where
  srcDir := "."
