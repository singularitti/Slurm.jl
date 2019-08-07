"""
# module Scriptify



# Examples

```jldoctest
julia>
```
"""
module Scriptify

using Slurm.SystemModules

export scriptify

scriptify(modules::AbstractVector{<: SystemModule}) = join(["module load $(string(m))" for m in modules], '\n')

end
