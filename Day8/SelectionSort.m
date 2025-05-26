ar=[7,4,10,8,3,1];
a=ar(1);
n=length(ar);
temp=0;
tic;
for i=1:n-1
    for j=i+1:n
        if ar(j)<a
            a=ar(j);
            temp=ar(i);
            ar(i)=a;
            ar(j)=temp;
        end
    end
    disp(ar(i));
    a=ar(i+1);
end
elapsed_Time=toc;
fprintf("Elapsed time :%f seconds \n ",elapsed_Time);

