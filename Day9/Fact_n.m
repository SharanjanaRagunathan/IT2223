function f=Fact_n(n)
if n==0||n==1
f=1;
else
    f=n*Fact_n(n-1);
end