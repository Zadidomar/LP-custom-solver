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
b = [randi([8 10],m*p,1); randi([5 8],n*p,1)];


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
b = [randi([8 10],m*p,1); randi([5 8],n*p,1)];      


>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

n=6; % products
m=10; % machines
p=12; % months


% Code for Data Generation for "c" or "f":
F = randi([-15,-10],n,p); 
c = [repmat(F(1,:),1,m) repmat(F(2,:),1,m) repmat(F(3,:),1,m) repmat(F(4,:),1,m) repmat(F(5,:),1,m) repmat(F(6,:),1,m)]; % n times
% for Linprog, it will be "f".


% Code for Data Generation for "A":
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Aaa = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Abb = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Acc = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Add = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Aee = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Aff = diag(Ay);
% there will be n rows.
Ap = [repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m)]; % n times of repmat for each row and there will be n rows.
A = [Aaa Abb Acc Add Aee Aff; Ap];


% Code for Data Generation for "b":
b = [randi([8 10],m*p,1); randi([5 8],n*p,1)];

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

n=8; % products
m=14; % machines
p=12; % months


% Code for Data Generation for "c" or "f":
F = randi([-15,-10],n,p); 
c = [repmat(F(1,:),1,m) repmat(F(2,:),1,m) repmat(F(3,:),1,m) repmat(F(4,:),1,m) repmat(F(5,:),1,m) repmat(F(6,:),1,m) repmat(F(7,:),1,m) repmat(F(8,:),1,m)]; % n times
% for Linprog, it will be "f".


% Code for Data Generation for "A":
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Aaa = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Abb = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Acc = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Add = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Aee = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Aff = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Agg = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Ahh = diag(Ay);
% there will be n rows.
Ap = [repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m)]; 
% n times of repmat for each row and there will be n rows.

A = [Aaa Abb Acc Add Aee Aff Agg Ahh; Ap];


% Code for Data Generation for "b":
b = [randi([8 10],m*p,1); randi([5 8],n*p,1)];

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

n=12; % products
m=18; % machines
p=12; % months


% Code for Data Generation for "c" or "f":
F = randi([-15,-10],n,p); 
c = [repmat(F(1,:),1,m) repmat(F(2,:),1,m) repmat(F(3,:),1,m) repmat(F(4,:),1,m) repmat(F(5,:),1,m) repmat(F(6,:),1,m) repmat(F(7,:),1,m) repmat(F(8,:),1,m) repmat(F(9,:),1,m) repmat(F(10,:),1,m) repmat(F(11,:),1,m) repmat(F(12,:),1,m)]; % n times
% for Linprog, it will be "f".


% Code for Data Generation for "A":
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Aaa = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Abb = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Acc = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Add = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Aee = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Aff = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Agg = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Ahh = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Aii = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Ajj = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); Akk = diag(Ay);
Aw = randi([7 9],1,m); Ax = repmat(Aw(1,:),p,1); Ay = reshape(Ax,[],1); All = diag(Ay);
% there will be n rows.
Ap = [repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m) repmat(zeros(p),1,m);
      repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(zeros(p),1,m) repmat(eye(p),1,m)]; 

% n times of repmat for each row and there will be n rows.

A = [Aaa Abb Acc Add Aee Aff Agg Ahh Aii Ajj Akk All; Ap];


% Code for Data Generation for "b":
b = [randi([8 10],m*p,1); randi([5 8],n*p,1)];

