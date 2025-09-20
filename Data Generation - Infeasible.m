n=3; % products
m=3; % machines
p=4; % months


% Code for Data Generation for "c" or "f":
F = randi([-15,-10],n,p); 
c = [repmat(F(1,:),1,m) repmat(F(2,:),1,m) repmat(F(3,:),1,m)]; % n times
% for Linprog, it will be "f".


% Code for Data Generation for "A":
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Aaa = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Abb = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Acc = diag(Ay);
% there will be n rows.
Ap = [repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m)]; % n times of repmat for each row and there will be n rows.
A = [Aaa Abb Acc; Ap];


% Code for Data Generation for "b":
b = [randi([8 10],m*p,1); randi([-8 -5],n*p,1)];


>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


n=4; % products
m=6; % machines
p=8; % months


% Code for Data Generation for "c" or "f":
F = randi([-15,-10],n,p); 
c = [repmat(F(1,:),1,m) repmat(F(2,:),1,m) repmat(F(3,:),1,m) repmat(F(4,:),1,m)]; % n times
% for Linprog, it will be "f".


% Code for Data Generation for "A":
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Aaa = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Abb = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Acc = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Add = diag(Ay);
% there will be n rows.
Ap = [repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m)]; % n times of repmat for each row and there will be n rows.
A = [Aaa Abb Acc Add; Ap];


% Code for Data Generation for "b":
b = [randi([8 10],m*p,1); randi([-8 -5],n*p,1)];      
