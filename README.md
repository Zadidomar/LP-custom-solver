# LP-custom-solver
Developing custom solvers for Revised &amp; Tableau Simplex methods and benchmarking against linprog on 100+ LP instances analyzing runtime and iterations. The problem is to maximize the revenue for a firm, with the objective function being the summation of the unit cost (price) over the number of n product types and p months multiplied by X, the total number of units of product i made on machine j in month k. 

## Methods
- Matlab function to generate data, and shape and arrange chunks of data blocks
- Matlab function to solve Revised Simplex Method
- Matlab function to solve Tableau Simplex Method
- Generating at least 100 instances of data for the LP problem
- Comparing the running time and number of iterations for each instance solved by Linprog (Matlab's built-in LP solver) and my Matlab functions

## Tools
Matlab, Linprog

## Results
- Running time increases with the change of parameter values.
- For lower sets of parameters, running time remains quite similar in revised and tableau simplex.
- As the parameters assume larger values and the constraint matrix gets bigger, the running time changes dramatically with tableau simplex requiring more time than revised simplex method.
- The number of iterations remain stable compared to the running times. But as the size of the constraint matrix gets bigger, the number of iterations increases to a large degree. 
