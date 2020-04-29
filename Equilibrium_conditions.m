function ye = Equilibrium_conditions(v0,N,spacing)

ye = zeros(2*N,1);
for i=2:2*N
    if mod(i,2)==1
    ye(i,1)= ye(i-2,1) + spacing;
    else
        if mod(i,2)==0
            ye(i,1)=v0;
        end
    end
end

