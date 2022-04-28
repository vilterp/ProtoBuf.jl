# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct Duration <: ProtoType
    seconds::Int64
    nanos::Int32
    __fill_cache::Union{Nothing,BitArray{2}}
    Duration(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Duration

export Duration
