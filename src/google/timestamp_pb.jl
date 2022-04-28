# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct Timestamp <: ProtoType
    seconds::Int64
    nanos::Int32
    __fill_cache::Union{Nothing,BitArray{2}}
    Timestamp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Timestamp

export Timestamp
