function [x,z,nItr,sts] = fsimplex(A,b,c,entRule,lvgRule)
% Calling this function will solve any linear programming problem
% x = Optimal solution of x vector is an output
% z = Optimal cost vector is an output
% nItr = Number of iterations is an output
% A = Constraint matrix is an input
% b = Right hand side vector is an input
% c = Cost vector is an intput
% entRule = option for entering variable, 0 =default, any other number =
% alternative option
% lvgRule = option for leaving variable, 0 =default, any other number =
% alternative option
tic;
[mA,np] = size(A);
Aav = [A eye(mA)]; % Aav = A with artificial variables.
[mA,nA] = size(Aav);
M = 1000000;
Mv = repelem(M,mA); % vector of m number of M's.
I = 1:nA;
Bind = setdiff(I,1:np);
NBind = setdiff(I,Bind);
B = Aav(:,Bind);
Binv = inv(B);
c = [c Mv];
cB = c(Bind);
cN = c(NBind);
x = zeros(nA,1);
xB = Binv*b; 
x(Bind) = xB;
x = x';
z = c*x;
nItr = 0;
    if entRule == 0
        cnP = cN - cB*(Binv*Aav(:,NBind)); % cnP = reduced cost for non-basic variables.
        [LcnP,j] = min(cnP);
        negcnP = any(cnP < 0);
        if negcnP == 0
                        if any(x(end-mA+1:end) > 0)
                        sts = "Infeasible"; %% CHECK IF STRING VALUES WORK THIS WAY IN MATLAB
                        else
                        sts = "Optimal";
                        end
        elseif negcnP == 1
            while (negcnP == 1)
                nItr = nItr + 1; 
                d = zeros(nA,1); 
                dB = -Binv*Aav(:,j); 
                d(j)=1; 
                d(Bind) = dB;
                if all(d(:)>= 0)
                    sts = "Unbounded";
                    break
                   
                else
                inds = find(d<0);
                [theta,l] = min (-x(inds)./d(inds));
                end
                if lvgRule == 0
                    xbyd = (-x(inds)./d(inds));
                    multmin = find(xbyd==theta);
                    n_multmin = numel(multmin);
                    randi_multmin = randi(n_multmin);
                    l = multmin(randi_multmin);
                else
                    xbyd = (-x(inds)./d(inds));
                    multmin = find(xbyd==theta);
                    mininds = min(inds(multmin));
                    l = find(inds==mininds);
                end
                l = find(Bind==inds(l));
                x = x + theta*d;
                z = c*x;
                T = [Binv -dB];
                T(l,:) = T(l,:)/T(l,mA+1);
                i=setdiff(1:mA,l); 
                T(i,:) = T(i,:) - T(l,:).*T(i,mA+1);
                Binv = T(:, 1:mA);
                rplc = Bind(l); Bind(l) = NBind(j); NBind(j) = rplc;
                cB = c(Bind);
                cN = c(NBind);
                cnP = cN - cB*(Binv*Aav(:,NBind)); % cnP = reduced cost for non-basic variables.
                [LcnP,j] = min(cnP);
                negcnP = any(cnP < 0);
                if negcnP == 1
                    continue
                elseif negcnP == 0
                
                    while negcnP == 0
                        if any(x(end-mA+1:end) > 0)
                        sts = "Infeasible"; %% CHECK IF STRING VALUES WORK THIS WAY IN MATLAB
                        else
                        sts = "Optimal";
                        end
                    end
                
                end
            end
        end
    else
        for t = 1:np     % t is being used as j.
            cnPt = c(NBind(t)) - (cB*Binv)*Aav(:,NBind(t));
            if cnPt < 0
                nItr = nItr + 1;
                d = zeros(nA,1); 
                dB = -Binv*Aav(:,t); 
                d(t)=1; 
                d(Bind) = dB;
                if all(d(:)>= 0)
                    sts = 'Unbounded';
                    break
                else
                inds = find(d<0);
                [theta,l] = min (-x(inds)./d(inds));
                end
                if lvgRule == 0
                    xbyd = (-x(inds)./d(inds));
                    multmin = find(xbyd==theta);
                    n_multmin = numel(multmin);
                    randi_multmin = randi(n_multmin);
                    l = multmin(randi_multmin);
                else
                    xbyd = (-x(inds)./d(inds));
                    multmin = find(xbyd==theta);
                    mininds = min(inds(multmin));
                    l = find(inds==mininds);
                end
                l = find(Bind==inds(l));
                x = x + theta*d;
                T = [Binv -dB];
                T(l,:) = T(l,:)/T(l,mA+1);
                i=setdiff(1:mA,l); T(i,:) = T(i,:) - T(l,:).*T(i,mA+1);
                Binv = T(:, 1:mA);
                rplc = Bind(l); Bind(l) = NBind(t); NBind(t) = rplc;
                cB = c(Bind);
                cN = c(NBind);
                xB = Binv*b; x = zeros(1,nA); x(Bind) = xB;
                x = x';
                z=c*x;
                
                continue
               
            elseif (cnPt >= 0) == 1
                    
                    if any(x(end-mA+1:end) > 0)
                    sts = 'Infeasible';
                    return
                    else
                    sts = 'Optimal';
                    return
                    end
            end
            
           
        end
    end
    toc;


