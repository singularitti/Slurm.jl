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

scriptify(s::sbatch) = join(["#$(prefix(s)) $(string(dir, long = true, with_value = true))" for dir in s.directives], '\n')
scriptify(modules::AbstractVector{<: SystemModule}) = join(["module load $(string(m))" for m in modules], '\n')

end
