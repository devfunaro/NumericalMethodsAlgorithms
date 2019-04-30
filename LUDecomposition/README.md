#### This matlab function is created in order to complete L U decomposition on a matrix 
LU decomposition is explained [here](https://en.wikipedia.org/wiki/LU_decomposition)

Too use the function download it and move it to your working matlab directory, to call the function use luFactor(A). The inputs and outputs are explained in detail bellow.

---

###### Inputs: 
---
A - a coefecient matrix that represents your system of equations (must besquare)

###### Outputs: 
---
L - Lower traingular matrix   

U - Upper triangular matrix  

P - The pivot matrix  

#### The luFactorTest is a script used too test the L U decomposition algorithm in an automated fasion 

The script is able to test the algorithm in a few ways:

1. Tests a non square matrix 
2. tests a matrix of random size and values
3. Tests an equation I have a solution for 

In addition the test script displays the lu decomposition of A using matlabs built in command for lu decomposition (lu(A)) 

