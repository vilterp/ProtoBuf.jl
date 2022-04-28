# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct FieldMask <: ProtoType
    paths::Base.Vector{AbstractString}
    __fill_cache::Union{Nothing,BitArray{2}}
    FieldMask(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct FieldMask

export FieldMask
