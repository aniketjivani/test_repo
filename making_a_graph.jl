# We will make our first graph in this file, and add a splash 
# of color to it!!!

using LightGraphs
using SimpleWeightedGraphs
using Random
using GraphPlot
using Plots
gr()

using Colors


g = Graph(3)

# add some edges (right now, its single edge between consecutive nodes)
add_edge!(g, 1, 2)
add_edge!(g, 2, 3)
add_edge!(g, 1, 3)

cur_colors = palette(:default, 100)

# load Julia logo colors
logocolors = Colors.JULIA_LOGO_COLORS

# convert them to an array
lgc = [i for i in logocolors]

lgc_palette = palette(lgc, 4)

nodelabel=1:nv(g)
edgelabel=1:ne(g)

first_graph_plot = gplot(g,
                        nodelabel=nodelabel,
                        nodefillc=lgc_palette[[2, 1, 4]],
                        nodestrokec=cur_colors[[3, 2, 4]],
                        nodestrokelw=0.25,
                        )

# Save plot as pdf
draw(PDF("./sample_outputs/first_graph.pdf"), first_graph_plot)


# Now load the karate club problem (famously analyzed by Wayne
# Zachary)

g2 = smallgraph(:karate)
# add_edge!(g2, 1, 6)
# add_edge!(g2, 3, 5)
# add_edge!(g2, 2, 5)
gplot(g2,
    nodelabel=1:nv(g2),
    nodefillc=cur_colors[1:nv(g2)],
    nodestrokec=RGB(0.0, 0.0, 0.0),
    nodestrokelw=0.25,
    )

