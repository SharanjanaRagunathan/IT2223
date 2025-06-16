%define edges
nodes={'A','B','C','D','E','F','G'};

%define edges (source and target nodes)
s = [1 1 2 2 3 3]; %from: A->B, A->C, B->D, B->E, C->F, C->G
t = [2 3 4 5 6 7]; % to

%define edge weights
weights=[5 3 2 4 6 1];

%create a directed graph
G = digraph(s, t, weights,nodes);

%plot the tree with edge weights displayed
plot(G,'Layout','layered','Direction','down','EdgeLabel',G.Edges.Weight);

title('Whighted tree with 3 levels');