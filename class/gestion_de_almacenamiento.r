# install.packages('igraph')
library('igraph')

##### Undirected binary network without weights #####
values = round(runif(20,1,7), 0)
g = graph(edges = values, directed = FALSE) # Create a graph

class(g) # The class of the g object
graph_id(g) # The ID of the object g
V(g) # With this, obtain the vertices of g
vcount(g) # This is the order of g
E(g) # This is the edges of g
ecount(g) # This is the size of the graph
is_simple(g) # To know if is simple or multigraph

print_all(g)
windows();plot(g) # The plot of the graph.

# In this case, we found that if we not use the directed parameter
# by default create a directed network, but if we put false, the network
# would be undirected.

##### Undirected binary network with weights #####
wg = g # Create a copy of the g graph
E(wg)$weight = 15*round(runif(ecount(wg)), 3) # Assign the weights of each edges
E(wg)$weight # See the weights

windows();plot(wg)

##### Directed binary network without weights #####
dg = graph(values) # Create a directed binary network. In this case, we don't use
                   # the directed parameter. For this, the graph is directed.


install.packages("languageserver")
