# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct SourceContext <: ProtoType
    file_name::AbstractString
    __fill_cache::Union{Nothing,BitArray{2}}
    SourceContext(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct SourceContext

export SourceContext
