% MATLAB Code for Graph Operations

% Define source and destination nodes
source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];

% Create the graph
G = graph(source, destination);

% Plot the graph with labels
figure;
h = plot(G, 'EdgeLabel', G.Edges.EndNodes(:, 1) + "->" + G.Edges.EndNodes(:, 2), 'LineWidth', 1.5);
title('Original Graph');
xlabel('X-axis');
ylabel('Y-axis');

% Display adjacency list (adjacent vertices)
disp('Adjacent vertices for each node:');
for i = 1:numnodes(G)
    adjNodes = neighbors(G, i);
    fprintf('Node %d is adjacent to: ', i);
    fprintf('%d ', adjNodes);
    fprintf('\n');
end

% Subgraph Example: Extract subgraph containing nodes 2, 3, 4
subNodes = [2 3 4];
subG = subgraph(G, subNodes);

% Plot the subgraph
figure;
plot(subG, 'EdgeLabel', subG.Edges.EndNodes(:, 1) + "->" + subG.Edges.EndNodes(:, 2), 'LineWidth', 1.5);
title('Subgraph with Nodes 2, 3, 4');

% Graph coloring: Assign random colors to each node
numNodes = numnodes(G);
colors = randi([1 5], numNodes, 1); % Random colors between 1 and 5
figure;
plot(G, 'NodeCData', colors, 'MarkerSize', 7, 'EdgeLabel', G.Edges.EndNodes(:, 1) + "->" + G.Edges.EndNodes(:, 2), 'LineWidth', 1.5);
colorbar;
title('Graph Coloring');

% Shortest Path from Node 1 to Node 5
[shortestPath, pathLength] = shortestpath(G, 1, 5);
fprintf('Shortest path from node 1 to node 5: ');
fprintf('%d ', shortestPath);
fprintf('\nPath length: %d\n', pathLength);

% Highlight the shortest path on the graph
figure;
h = plot(G, 'EdgeLabel', G.Edges.EndNodes(:, 1) + "->" + G.Edges.EndNodes(:, 2), 'LineWidth', 1.5);
highlight(h, shortestPath, 'NodeColor', 'r', 'MarkerSize', 7);
highlight(h, shortestPath(1:end-1), shortestPath(2:end), 'EdgeColor', 'r', 'LineWidth', 2);
title('Shortest Path from Node 1 to Node 5');
