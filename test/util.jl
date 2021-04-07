using Test
using QCMaterial

@testset "util.topylist" begin
    org_array = [1, 2, 3.0]
    pylist = topylist(org_array)
    @test all(org_array .== pylist)
end

@testset "util.doublefunc" begin
    org_array = [1, 2, 3]
    @test all(doublefunc(org_array) .== 2 .* org_array)
end

@testset "util.numerical_grad" begin
    # Some test for numerical_grad
    f(x) = x[1] + 2*x[2]
    deriv = numerical_grad(f, zeros(2))
    @assert deriv ≈ [1.0, 2.0]
end
