%difine the weighted adjacency matrix

adjMatrix=[
   0 2 0 1 0;
   2 0 4 3 0;
   0 4 0 0 6;
   1 3 0 0 5;
    0 0 6 5 0;
];

%create and plot the graph
G = graph(adjMatrix);

% Plot the graph
figure;
plot(G, 'EdgeLabel', G.Edges.Weight);
title('Graph Representation of Adjacency Matrix');

%Replace 0s with Inf (except diagonal)
n =  size(adjMatrix, 1);
for i = 1:n
    for j= 1:n
        if i ~= j && adjMatrix(i,j) ==0
            adjMatrix(i,j) = Inf;
        end

    end
end

%Dijkstra Algorithm
startNode = 1;
visited = false(1,n);
distance = Inf(1,n);
distance(startNode) =0;


for i = i:n
    minDist = Inf;
    u = -1;
    for j = 1:n
        if ~visited(j) && distance(j)< minDist
            minDist = distance(j);
            u = j;
        end
    end

    if u == -1
        break;
    end


    visited(u) = true;

    for v = 1:n
        if ~visited(v) && adjMatrix(u,v) ~= Inf
            if distance(u) + adjMatrix(u,v) < distance(v)
                distance(v) = distance(u) +adjMatrix(u,v);
            end
        end
    end
end
%display Results
fprintf('Shortes distances from the source:\n');
for i = 1:n
    fprintf('Vertex %d: %d\n' , i, distance(i));
end



