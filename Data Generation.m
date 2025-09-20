n=2; % products
m=3; % machines
p=4; % months


% Code for Data Generation for "f":
F = randi([-15,-10],n,p); 
f = [repmat(F(1,:),1,m) repmat(F(2,:),1,m)]; % n times


% Code for Data Generation for "A":
Aa = randi([7 9],1,m); Ab = repmat(Aa(1,:),p,1); Ac = reshape(Ab,[],1); Ad = diag(Ac);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Az = diag(Ay);
% ^ n times
Ap = [repmat(eye(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(eye(p),1,m)]; % n times for each row
A = [Ad Az; Ap];


% Code for Data Generation for "b":
b = [randi([8 10],m*p,1); randi([5 8],n*p,1)];



n=3; % products
m=3; % machines
p=4; % months


% Code for Data Generation for "f":
F = randi([-15,-10],n,p); 
f = [repmat(F(1,:),1,m) repmat(F(2,:),1,m) repmat(F(3,:),1,m)]; % n times


% Code for Data Generation for "A":
Aa = randi([7 9],1,m); Ab = repmat(Aa(1,:),p,1); Ac = reshape(Ab,[],1); Ad = diag(Ac);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Az = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Am = diag(Ay);
% there will be n rows.
Ap = [repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m)]; % n times of repmat for each row and there will be n rows.
A = [Ad Az Am; Ap];


% Code for Data Generation for "b":
b = [randi([8 10],m*p,1); randi([5 8],n*p,1)];

      