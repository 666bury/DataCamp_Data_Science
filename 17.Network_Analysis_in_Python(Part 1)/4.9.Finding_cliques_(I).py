'''You're now going to practice finding cliques in G. Recall that cliques are "groups of nodes that are fully connected to one another", while a maximal clique is a clique that cannot be extended by adding another node in the graph.'''
#TASK
# Count the number of maximal cliques present in the graph and print it.
# Use the nx.find_cliques() function of G to find the maximal cliques.
# The nx.find_cliques() function returns a generator object. To count the number of maximal cliques, you need to first convert it to a list with list() and then use the len() function. Place this inside a print() function to print it.

# Calculate the maximal cliques in G: cliques
cliques = ____

# Count and print the number of maximal cliques in G
print(____)





#SOLUTION
# Calculate the maximal cliques in G: cliques
cliques = nx.find_cliques(G)

# Count and print the number of maximal cliques in G
print(list(nx.find_cliques(G)))