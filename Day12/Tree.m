%define edges
nodes={'A','B','C','D','E','F','G'};

%define edges using source and target nodes
s = [1 1 2 2 3 3]; %from: A->B, A->C, B->D, B->E, C->F, C->G
t = [2 3 4 5 6 7]; % to

%create a directed graph
G = digraph(s, t, [],nodes);

%plot the tree
plot(G,'Layout','layered','Direction','down');
title('Simple tree with 3 levels');
