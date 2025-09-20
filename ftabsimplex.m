function [x,z,nItr] = ftabsimplex(A,b,c,entRule,lvgRule)
tic;
[mA,np] = size(A);
Aav = [A eye(mA)]; % Aav = A with artificial variables.
[mA,nA] = size(Aav);
M = -1000000;
Mv = repelem(M,mA); % vector of m number of M's.
I = 1:nA;
Bind = setdiff(I,1:np);
B = Aav(:,Bind);
Binv = inv(B);
c = [c Mv];
cB = c(Bind);
cP = c - cB*Binv*Aav;
x = zeros(nA,1); xB = Binv*b; x(Bind) = xB;
nItr = 0;
T = [ [-cB*xB cP]; [xB Binv*Aav] ];
negcP = any(T(1,2:nA) < 0);
if negcP == 1
    if entRule == 0
            while (negcP == 1)
                    nItr = nItr + 1;
                    [LcP,j] = min(T(1,2:nA));
                    j = j+1;
                    inds = find(T(2:mA+1,j)>0);
                    if all(T(2:mA+1,j)<=0)
                        sts = 'unbounded';
                        break
                    else
                    [theta,l] = min(T(inds+1,1)./T(inds+1,j));
                    end
                    if lvgRule == 0
                        ratios = T(inds+1,1)./T(inds+1,j);
                        multmin = find(ratios==theta);
                        n_multmin = numel(multmin);
                        randi_multmin = randi(n_multmin);
                        l = multmin(randi_multmin);
                    else
                        ratios = T(inds+1,1)./T(inds+1,j);
                        multmin = find(ratios==theta);
                        n_multmin = numel(multmin);
                        if n_multmin >= 2
                            for i = inds
                            T(i,:) = T(i,:)/T(i,j);
                            diffValCol = find(any(diff(T(inds+1,:),1,1),1),1);
                            l = find(min(T(multmin,diffValCol)));
                            end
                        else
                        end
                    end
                    l = inds(l)+1;
                    T(l,:) = T(l,:)/T(l,j);
                    i = setdiff(1:mA+1,l);
                    T(i,:) = T(i,:) - T(l,:).*T(i,j);
                    x = zeros(nA,1);
                    for Xrows = 2:mA+1
                        findXinds = find(T(Xrows, 2:nA+1)==1);
                        findZeros = setdiff(T(:,findXinds+1),1);
                        for findZeros = 0
                            x(findXinds) = T(Xrows,1);
                        end
                    end
                    z = T(1,1); 
                    z = -z;
                    negcP = any(T(1,2:nA) < 0);
                    if negcP == 0
                        if any(x(end-mA+1:end) > 0)
                            sts = 'Infeasible';
                            return
                        else
                            sts = 'optimal';
                        end
                    else
                        continue
                    end   
            end
    else
        while (negcP == 1)
                    nItr = nItr + 1;
                    j = min(find(T(1,2:nA)));
                    j = j+1;
                    inds = find(T(2:mA+1,j)>0);
                    [theta,l] = min(T(inds+1,1)./T(inds+1,j));
                    if lvgRule == 0
                        ratios = T(inds+1,1)./T(inds+1,j);
                        multmin = find(ratios==theta);
                        n_multmin = numel(multmin);
                        randi_multmin = randi(n_multmin);
                        l = multmin(randi_multmin);
                    else
                        ratios = T(inds+1,1)./T(inds+1,j);
                        multmin = find(ratios==theta);
                        n_multmin = numel(multmin);
                        if n_multmin >= 2
                            for i = inds
                            T(i,:) = T(i,:)/T(i,j);
                            diffValCol = find(any(diff(T(inds+1,:),1,1),1),1);
                            l = find(min(T(multmin,diffValCol)));
                            end
                        else
                        end
                    end
                    l = inds(l)+1;
                    T(l,:) = T(l,:)/T(l,j);
                    i = setdiff(1:mA+1,l);
                    T(i,:) = T(i,:) - T(l,:).*T(i,j);
                    x = zeros(nA,1);
                    for Xrows = 2:mA+1
                        findXinds = find(T(Xrows, 2:nA+1)==1);
                        findZeros = setdiff(T(:,findXinds+1),1);
                        for findZeros = 0
                            x(findXinds) = T(Xrows,1);
                        end
                    end
                    z = T(1,1); 
                    z= -z;
                    negcP = any(T(1,2:nA) < 0);
                    if negcP == 1
                        continue
                    end   
        end
    end
else
end
toc;









