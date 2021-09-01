using LightGraphs
using SimpleWeightedGraphs
using Random
using GraphPlot
using Compose, Cairo, Fontconfig
using Plots
gr()

using Colors

cp = palette(:viridis, 20)

nvert = 16 # number of vertices
p = 0.35   # probability of connecting an edge between 2 vertices

er1 = erdos_renyi(nvert, p)

pp = gplot(er1,
      nodefillc=cp[1:nv(er1)],
      nodelabel=1:nv(er1),
      nodelabelc=RGB(1.0, 1.0, 1.0)
    )

draw(PDF("./sample_outputs/erdos_renyi.pdf"), pp)