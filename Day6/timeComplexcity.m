n=10;
tic; % Start timming
for i=1:n
    disp(i);
end
elapsedTime=toc; %End timming and store elapsed time

fprintf('Elapsed time:%f seconds\n',elapsedTime);