function time = mult6(n) 
    A = rand(n,n);
    B = rand(n,n);
    C = zeros(n,n);
    
    tID = tic;
    At = A';
    parfor i = 1:n
        for j = 1:n
            sum = 0;
            for k = 1:n
                sum = sum + At(k,i) * B(k,j);
            end
            C(i,j) = sum;
        end
    end
    time = toc(tID);
    D = A * B;
    error = norm(C-D,1)
end
