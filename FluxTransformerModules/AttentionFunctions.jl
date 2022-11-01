module AttentionFunctions

using Flux

function SDPattn(Q::AbstractArray, K::AbstractArray, V::AbstractArray)
    size(Q) == size(K) ? nothing : AssertionError("Dimension of query (Q) and keys (K) must match!") |> throw
    Kᵀ = transpose(K)
    dₖ =  size(Q)[1]
    return (softmax(Q * Kᵀ) / √dₖ) * V
end

function windowedattn(Q::AbstractArray, K::AbstractArray, window::Int)
    size(Q) == size(K) ? nothing : AssertionError("Dimension of query (Q) and keys (K) must match!") |> throw
    
end

end