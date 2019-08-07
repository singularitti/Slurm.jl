"""
# module CommandDirectives



# Examples

```jldoctest
julia>
```
"""
module CommandDirectives

using Parameters

export Directive

@with_kw struct Directive{A <: AbstractString,B <: Union{Nothing,AbstractChar},T}
    long::A
    short::B = nothing
    value::T
end

end
